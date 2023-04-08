#!/bin/bash
program=(boost wolfssl fast-dds nghttp2) #keystone
for name in ${program[@]} ;do
    compile program
done
#/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/compile-kernels/IRDumper/build/lib/libDumper.so
#/home/yantingchi/Desktop/clang/clang14.0.0
#clang -fsanitize=cfi -flto -fvisibility=hidden -fno-sanitize-trap=all -fuse-ld=lld


commit 9226137f2efa457309f2d0e826e33af0afefaadf
Author: Brian Begnoche <bcb@chromium.org>
Date:   Fri Feb 24 15:52:57 2023 +0000

    Revert "[IBAN local save] Add eye icon to manage saved IBAN bubble view."
    
    This reverts commit 508aa18d610c7e170001785518e68b05da8be283.
    
    Reason for revert: Causes IbanBubbleViewFullFormBrowserTest.Local_ClickingHideOrShowIbanValueManageView failurees.
    
    from https://ci.chromium.org/ui/p/chromium/builders/ci/linux-ubsan-vptr/21221/test-results?sortby=&groupby=&q=ExactID%3Aninja%3A%2F%2Fchrome%2Ftest%3Ainteractive_ui_tests%2FIbanBubbleViewFullFormBrowserTest.Local_ClickingHideOrShowIbanValueManageView+VHash%3Ad2ca29b55d68a4ff:
    
    ../../chrome/browser/ui/views/autofill/payments/iban_bubble_view_uitest.cc:282:12: runtime error: downcast of address 0x0798015a1b00 which does not point to an object of type 'SaveIbanBubbleView'
    0x0798015a1b00: note: object is of type 'autofill::ManageSavedIbanBubbleView'
     29 00 00 00  38 f3 68 e6 e4 55 00 00  78 f3 68 e6 e4 55 00 00  c0 ce 6c 01 98 07 00 00  80 18 0b 00
                  ^~~~~~~~~~~~~~~~~~~~~~~
                  vptr for 'autofill::ManageSavedIbanBubbleView'
        #0 0x55e4d02f0701 in autofill::IbanBubbleViewFullFormBrowserTest::GetSaveIbanBubbleView() chrome/browser/ui/views/autofill/payments/iban_bubble_view_uitest.cc:282:12
        #1 0x55e4d02fb74f in autofill::IbanBubbleViewFullFormBrowserTest::ClickOnDialogView(views::View*) chrome/browser/ui/views/autofill/payments/iban_bubble_view_uitest.cc:345:5
        #2 0x55e4d02f6e6e in autofill::IbanBubbleViewFullFormBrowserTest_Local_ClickingHideOrShowIbanValueManageView_Test::RunTestOnMainThread() chrome/browser/ui/views/autofill/payments/iban_bubble_view_uitest.cc:623:3
        #3 0x55e4d99bf48e in content::BrowserTestBase::ProxyRunTestOnMainThreadLoop() content/public/test/browser_test_base.cc:895:7
        #4 0x55e4d4a7be0d in Run base/functional/callback.h:152:12
        #5 0x55e4d4a7be0d in content::BrowserMainLoop::InterceptMainMessageLoopRun() content/browser/browser_main_loop.cc:1038:36
        #6 0x55e4d4a7bf1e in content::BrowserMainLoop::RunMainMessageLoop() content/browser/browser_main_loop.cc:1050:7
        #7 0x55e4d4a811f9 in content::BrowserMainRunnerImpl::Run() content/browser/browser_main_runner_impl.cc:158:15
        #8 0x55e4d4a75a6d in content::BrowserMain(content::MainFunctionParams) content/browser/browser_main.cc:32:28
        #9 0x55e4d6fe2fbe in content::RunBrowserProcessMain(content::MainFunctionParams, content::ContentMainDelegate*) content/app/content_main_runner_impl.cc:716:10
        #10 0x55e4d6fe5438 in content::ContentMainRunnerImpl::RunBrowser(content::MainFunctionParams, bool) content/app/content_main_runner_impl.cc:1276:10
        #11 0x55e4d6fe4f4d in content::ContentMainRunnerImpl::Run() content/app/content_main_runner_impl.cc:1130:12
        #12 0x55e4d6fe02ab in content::RunContentProcess(content::ContentMainParams, content::ContentMainRunner*) content/app/content_main.cc:324:36
        #13 0x55e4d6fe0935 in content::ContentMain(content::ContentMainParams) content/app/content_main.cc:341:10
        #14 0x55e4d99be269 in content::BrowserTestBase::SetUp() content/public/test/browser_test_base.cc:575:3
        #15 0x55e4d7cec8e0 in InProcessBrowserTest::SetUp() chrome/test/base/in_process_browser_test.cc:484:20
        #16 0x55e4d0875e53 in SyncTest::SetUp() chrome/browser/sync/test/integration/sync_test.cc:300:24
        #17 0x55e4d0e00c17 in testing::Test::Run() third_party/googletest/src/googletest/src/gtest.cc:2665:3
        #18 0x55e4d0e0265e in testing::TestInfo::Run() third_party/googletest/src/googletest/src/gtest.cc:2849:11
        #19 0x55e4d0e042fb in testing::TestSuite::Run() third_party/googletest/src/googletest/src/gtest.cc:3008:30
        #20 0x55e4d0e1a210 in testing::internal::UnitTestImpl::RunAllTests() third_party/googletest/src/googletest/src/gtest.cc:5866:44
        #21 0x55e4d0e18dc8 in testing::UnitTest::Run() third_party/googletest/src/googletest/src/gtest.cc:5440:10
        #22 0x55e4daaaa4a0 in RUN_ALL_TESTS third_party/googletest/src/googletest/include/gtest/gtest.h:2284:73
        #23 0x55e4daaaa4a0 in base::TestSuite::Run() base/test/test_suite.cc:454:16
        #24 0x55e4d7cb6b48 in ChromeTestSuiteRunner::RunTestSuiteInternal(ChromeTestSuite*) chrome/test/base/chrome_test_launcher.cc:95:22
        #25 0x55e4d03f6416 in InteractiveUITestSuiteRunner::RunTestSuite(int, char**) chrome/test/base/interactive_ui_tests_main.cc:134:12
        #26 0x55e4d99fb844 in content::LaunchTests(content::TestLauncherDelegate*, unsigned long, int, char**) content/public/test/test_launcher.cc:415:31
        #27 0x55e4d7cb722e in LaunchChromeTests(unsigned long, content::TestLauncherDelegate*, int, char**) chrome/test/base/chrome_test_launcher.cc:318:10
        #28 0x55e4d03f63a1 in main chrome/test/base/interactive_ui_tests_main.cc:176:10
        #29 0x7fbe2824bc86 in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x21c86) (BuildId: f7307432a8b162377e77a182b6cc2e53d771ec4b)
        #30 0x55e4cff4a029 in _start (/b/s/w/ir/out/Release/interactive_ui_tests+0xc8b2029) (BuildId: b65d070fe6c272ab)
    
# Reason for revert: Broke https://ci.chromium.org/ui/p/chromium/builders/ci/Linux%20CFI/23933/overview

# commit a0c1584a2fade0146b7cd3380abe42feda02ad7c
Author: Thomas Anderson <thomasanderson@chromium.org>
Date:   Fri Jun 22 22:01:06 2018 +0000

    Reland "Reland "Update fontconfig to 6cc99d6a""
    
    This reverts commit 812edd08bc908333c1c10205cbc5f52ef33c7dec.
    
    Reason for revert: libuuid1:i386 should now be installed on the bots (bug 853048)
    
    Original change's description:
    > Revert "Reland "Update fontconfig to 6cc99d6a""
    >
    > This reverts commit 0c91664fce2e753a65b04107ad24c7422691cf9d.
    >
    > Reason for revert: Broke Linux Builder (dbg)(32)
    >
    > Still missing libuuid:
    >
    > https://ci.chromium.org/p/chromium/builders/luci.chromium.ci/Linux%20Builder%20%28dbg%29%2832%29/83697
    >
    > [775/4337] ACTION //tools/v8_context_snapshot:generate_v8_context_snapshot(//build/toolchain/linux:clang_x86)
    > FAILED: v8_context_snapshot.bin
    > python ../../build/gn_run_binary.py ./v8_context_snapshot_generator --output_file=v8_context_snapshot.bin
    > ././v8_context_snapshot_generator: error while loading shared libraries: libuuid.so.1: cannot open shared object file: No such file or directory
    > ./v8_context_snapshot_generator failed with exit code 127
    >
    > Original change's description:
    > > Reland "Update fontconfig to 6cc99d6a"
    > >
    > > This is a reland of e6db40d91d0bd2afeb39f78f6d22404c3525b63c
    > >
    > > Reason for reland: All bots should now have libuuid1 installed (bug 853048).
    > >
    > > Original change's description:
    > > > Update fontconfig to 6cc99d6a
    > > >
    > > > Changelog [1].  This is necessary to pick up [2] for fixing undefined-shift
    > > > UBSAN errors detected by clusterfuzz, [3] to allow removing a build workaround,
    > > > [4] to fix a bug and clean up some log spam, [5] to fix CFI builds, and [6] to
    > > > fix a use-after-free.
    > > >
    > > > Fontconfig also now requires libuuid as a dependency, so whitelist it as a
    > > > dependency since we statically link fontconfig.
    > > >
    > > > [1] https://chromium.googlesource.com/external/fontconfig/+log/b546940435ebfb0df575bc7a2350d1e913919c34..6cc99d6a82ad67d2f5eac887b28bca13c0dfddde
    > > > [2] https://chromium.googlesource.com/external/fontconfig/+/c60ed9ef66e59584f8b54323018e9e6c69925c7e
    > > > [3] https://chromium.googlesource.com/external/fontconfig/+/b8a225b3c3495942480377b7b3404710c70be914
    > > > [4] https://chromium.googlesource.com/external/fontconfig/+/7ad010e80bdf8e41303e322882ece908f5e04c74
    > > > [5] https://chromium.googlesource.com/external/fontconfig/+/096e8019be595c2224aaabf98da630ee917ee51c
    > > > [6] https://chromium.googlesource.com/external/fontconfig/+/6cc99d6a82ad67d2f5eac887b28bca13c0dfddde
    > > >
    > > > BUG=831146,822737,787020,829890,847323
    > > > TBR=thestig,dnicoara
    > > >
    > > > Change-Id: Ic2d1bd19af8ca131c960a30d09246827c115ccec
    > > > Reviewed-on: https://chromium-review.googlesource.com/1095538
    > > > Commit-Queue: Thomas Anderson <thomasanderson@chromium.org>
    > > > Reviewed-by: Thomas Anderson <thomasanderson@chromium.org>
    > > > Reviewed-by: Lei Zhang <thestig@chromium.org>
    > > > Reviewed-by: Daniel Nicoara <dnicoara@chromium.org>
    > > > Cr-Commit-Position: refs/heads/master@{#567445}
    > >
    > > TBR=thestig,dnicoara
    > >
    > > Bug: 831146, 822737, 787020, 829890, 847323, 853048
    > > Change-Id: Id42738aaf5841bd219dc0e9209680c87e88f4869
    > > Reviewed-on: https://chromium-review.googlesource.com/1104759
    > > Reviewed-by: Thomas Anderson <thomasanderson@chromium.org>
    > > Cr-Commit-Position: refs/heads/master@{#568221}
    >
    > TBR=thestig@chromium.org,robliao@chromium.org,dnicoara@chromium.org,thomasanderson@chromium.org
    >
    > Change-Id: Icd39638df79083776546d4283675c3e172bbefe4
    > No-Presubmit: true
    > No-Tree-Checks: true
    > No-Try: true
    > Bug: 831146, 822737, 787020, 829890, 847323, 853048
    > Reviewed-on: https://chromium-review.googlesource.com/1105539
    > Reviewed-by: Giovanni Ortuño Urquidi <ortuno@chromium.org>
    > Commit-Queue: Giovanni Ortuño Urquidi <ortuno@chromium.org>
    > Cr-Commit-Position: refs/heads/master@{#568346}
    
    TBR=thestig@chromium.org,robliao@chromium.org,dnicoara@chromium.org,ortuno@chromium.org,thomasanderson@chromium.org
    
    # Not skipping CQ checks because original CL landed > 1 day ago.
    
    Bug: 831146, 822737, 787020, 829890, 847323, 853048
    Change-Id: I5fe29b3ff4ba7ec81498878124a39c70d5e9a8be
    Reviewed-on: https://chromium-review.googlesource.com/1112179
    Reviewed-by: Thomas Anderson <thomasanderson@chromium.org>
    Reviewed-by: Elliott Friedman <friedman@chromium.org>
    Cr-Commit-Position: refs/heads/master@{#569800}