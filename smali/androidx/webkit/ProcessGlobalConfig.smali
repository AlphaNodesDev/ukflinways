.class public Landroidx/webkit/ProcessGlobalConfig;
.super Ljava/lang/Object;
.source "ProcessGlobalConfig.java"


# static fields
.field private static sApplyCalled:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sProcessGlobalConfig:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mDataDirectorySuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroidx/webkit/ProcessGlobalConfig;->sProcessGlobalConfig:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/webkit/ProcessGlobalConfig;->sLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/webkit/ProcessGlobalConfig;->sApplyCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static apply(Landroidx/webkit/ProcessGlobalConfig;)V
    .locals 4
    .param p0, "config"    # Landroidx/webkit/ProcessGlobalConfig;

    .line 152
    sget-object v0, Landroidx/webkit/ProcessGlobalConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-boolean v1, Landroidx/webkit/ProcessGlobalConfig;->sApplyCalled:Z

    if-nez v1, :cond_3

    .line 163
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/webkit/ProcessGlobalConfig;->sApplyCalled:Z

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v0, "configMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Landroidx/webkit/ProcessGlobalConfig;->webViewCurrentlyLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

    .line 175
    .local v1, "feature":Landroidx/webkit/internal/StartupApiFeature$P;
    invoke-virtual {v1}, Landroidx/webkit/internal/StartupApiFeature$P;->isSupportedByFramework()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Landroidx/webkit/ProcessGlobalConfig;->mDataDirectorySuffix:Ljava/lang/String;

    invoke-static {v2}, Landroidx/webkit/internal/ApiHelperForP;->setDataDirectorySuffix(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    const-string v2, "DATA_DIRECTORY_SUFFIX"

    iget-object v3, p0, Landroidx/webkit/ProcessGlobalConfig;->mDataDirectorySuffix:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_0
    sget-object v2, Landroidx/webkit/ProcessGlobalConfig;->sProcessGlobalConfig:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroidx/webkit/ProcessGlobalConfig$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    return-void

    .line 182
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Attempting to set ProcessGlobalConfig#sProcessGlobalConfig when it was already set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    .end local v1    # "feature":Landroidx/webkit/internal/StartupApiFeature$P;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WebView has already been loaded in the current process, so any attempt to apply the settings in ProcessGlobalConfig will have no effect. ProcessGlobalConfig#apply needs to be called before any calls to android.webkit APIs, such as during early app startup."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v0    # "configMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ProcessGlobalConfig#apply was called more than once, which is an illegal operation. The configuration settings provided by ProcessGlobalConfig take effect only once, when WebView is first loaded into the current process. Every process should only ever create a single instance of ProcessGlobalConfig and apply it once, before any calls to android.webkit APIs, such as during early app startup."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "config":Landroidx/webkit/ProcessGlobalConfig;
    throw v1

    .line 164
    .restart local p0    # "config":Landroidx/webkit/ProcessGlobalConfig;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static webViewCurrentlyLoaded()Z
    .locals 5

    .line 192
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.webkit.WebViewFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 193
    .local v1, "webViewFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "sProviderInstance"

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 195
    .local v2, "providerInstanceField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 196
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    move v0, v3

    :cond_0
    return v0

    .line 197
    .end local v1    # "webViewFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "providerInstanceField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public setDataDirectorySuffix(Landroid/content/Context;Ljava/lang/String;)Landroidx/webkit/ProcessGlobalConfig;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 116
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

    .line 118
    .local v0, "feature":Landroidx/webkit/internal/StartupApiFeature$P;
    invoke-virtual {v0, p1}, Landroidx/webkit/internal/StartupApiFeature$P;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 128
    iput-object p2, p0, Landroidx/webkit/ProcessGlobalConfig;->mDataDirectorySuffix:Ljava/lang/String;

    .line 129
    return-object p0

    .line 125
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suffix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains a path separator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Suffix cannot be an empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method
