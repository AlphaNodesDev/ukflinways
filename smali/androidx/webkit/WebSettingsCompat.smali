.class public Landroidx/webkit/WebSettingsCompat;
.super Ljava/lang/Object;
.source "WebSettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebSettingsCompat$ForceDarkStrategy;,
        Landroidx/webkit/WebSettingsCompat$ForceDark;,
        Landroidx/webkit/WebSettingsCompat$MenuItemFlags;
    }
.end annotation


# static fields
.field public static final DARK_STRATEGY_PREFER_WEB_THEME_OVER_USER_AGENT_DARKENING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DARK_STRATEGY_USER_AGENT_DARKENING_ONLY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DARK_STRATEGY_WEB_THEME_DARKENING_ONLY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORCE_DARK_AUTO:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORCE_DARK_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORCE_DARK_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;
    .locals 1
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 760
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertSettings(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getDisabledActionModeMenuItems(Landroid/webkit/WebSettings;)I
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 213
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$N;

    .line 214
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$N;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$N;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForN;->getDisabledActionModeMenuItems(Landroid/webkit/WebSettings;)I

    move-result v1

    return v1

    .line 216
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$N;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getDisabledActionModeMenuItems()I

    move-result v1

    return v1

    .line 219
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getEnterpriseAuthenticationAppLinkPolicyEnabled(Landroid/webkit/WebSettings;)Z
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 689
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 691
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getEnterpriseAuthenticationAppLinkPolicyEnabled()Z

    move-result v1

    return v1

    .line 694
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getForceDark(Landroid/webkit/WebSettings;)I
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/ApiFeature$Q;

    .line 391
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$Q;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForQ;->getForceDark(Landroid/webkit/WebSettings;)I

    move-result v1

    return v1

    .line 393
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getForceDark()I

    move-result v1

    return v1

    .line 396
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getForceDarkStrategy(Landroid/webkit/WebSettings;)I
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 629
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK_STRATEGY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 630
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getForceDark()I

    move-result v1

    return v1

    .line 633
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getOffscreenPreRaster(Landroid/webkit/WebSettings;)Z
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 95
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/ApiFeature$M;

    .line 96
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$M;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForM;->getOffscreenPreRaster(Landroid/webkit/WebSettings;)Z

    move-result v1

    return v1

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getOffscreenPreRaster()Z

    move-result v1

    return v1

    .line 101
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getRequestedWithHeaderOriginAllowList(Landroid/webkit/WebSettings;)Ljava/util/Set;
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebSettings;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 717
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->REQUESTED_WITH_HEADER_ALLOW_LIST:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 719
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getRequestedWithHeaderOriginAllowList()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 722
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getSafeBrowsingEnabled(Landroid/webkit/WebSettings;)Z
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 151
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/ApiFeature$O;

    .line 152
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$O;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForO;->getSafeBrowsingEnabled(Landroid/webkit/WebSettings;)Z

    move-result v1

    return v1

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getSafeBrowsingEnabled()Z

    move-result v1

    return v1

    .line 157
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static isAlgorithmicDarkeningAllowed(Landroid/webkit/WebSettings;)Z
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 511
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$T;

    .line 512
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$T;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$T;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->isAlgorithmicDarkeningAllowed()Z

    move-result v1

    return v1

    .line 515
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setAlgorithmicDarkeningAllowed(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "allow"    # Z

    .line 493
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$T;

    .line 494
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$T;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$T;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setAlgorithmicDarkeningAllowed(Z)V

    .line 499
    return-void

    .line 497
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setDisabledActionModeMenuItems(Landroid/webkit/WebSettings;I)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "menuItems"    # I

    .line 189
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$N;

    .line 190
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$N;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$N;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForN;->setDisabledActionModeMenuItems(Landroid/webkit/WebSettings;I)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$N;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setDisabledActionModeMenuItems(I)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setEnterpriseAuthenticationAppLinkPolicyEnabled(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "enabled"    # Z

    .line 662
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 664
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setEnterpriseAuthenticationAppLinkPolicyEnabled(Z)V

    .line 669
    return-void

    .line 667
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setForceDark(Landroid/webkit/WebSettings;I)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "forceDarkMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/ApiFeature$Q;

    .line 362
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$Q;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForQ;->setForceDark(Landroid/webkit/WebSettings;I)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setForceDark(I)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setForceDarkStrategy(Landroid/webkit/WebSettings;I)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "forceDarkBehavior"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK_STRATEGY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 602
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setForceDarkStrategy(I)V

    .line 607
    return-void

    .line 605
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setOffscreenPreRaster(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "enabled"    # Z

    .line 70
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/ApiFeature$M;

    .line 71
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$M;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForM;->setOffscreenPreRaster(Landroid/webkit/WebSettings;Z)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setOffscreenPreRaster(Z)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setRequestedWithHeaderOriginAllowList(Landroid/webkit/WebSettings;Ljava/util/Set;)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebSettings;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 750
    .local p1, "allowList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->REQUESTED_WITH_HEADER_ALLOW_LIST:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 752
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setRequestedWithHeaderOriginAllowList(Ljava/util/Set;)V

    .line 757
    return-void

    .line 755
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setSafeBrowsingEnabled(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "enabled"    # Z

    .line 127
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/ApiFeature$O;

    .line 128
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$O;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForO;->setSafeBrowsingEnabled(Landroid/webkit/WebSettings;Z)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setSafeBrowsingEnabled(Z)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setWillSuppressErrorPage(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "suppressed"    # Z

    .line 244
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SUPPRESS_ERROR_PAGE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 245
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setWillSuppressErrorPage(Z)V

    .line 250
    return-void

    .line 248
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static willSuppressErrorPage(Landroid/webkit/WebSettings;)Z
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 271
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SUPPRESS_ERROR_PAGE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 272
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->willSuppressErrorPage()Z

    move-result v1

    return v1

    .line 275
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method
