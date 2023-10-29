.class public final Landroidx/webkit/WebViewAssetLoader$InternalStoragePathHandler;
.super Ljava/lang/Object;
.source "WebViewAssetLoader.java"

# interfaces
.implements Landroidx/webkit/WebViewAssetLoader$PathHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalStoragePathHandler"
.end annotation


# static fields
.field private static final FORBIDDEN_DATA_DIRS:[Ljava/lang/String;


# instance fields
.field private final mDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 279
    const-string v0, "shared_prefs/"

    const-string v1, "code_cache/"

    const-string v2, "app_webview/"

    const-string v3, "databases/"

    const-string v4, "lib/"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/webkit/WebViewAssetLoader$InternalStoragePathHandler;->FORBIDDEN_DATA_DIRS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "directory"    # Ljava/io/File;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Landroidx/webkit/internal/AssetHelper;->getCanonicalDirPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/webkit/WebViewAssetLoader$InternalStoragePathHandler;->mDirectory:Ljava/io/File;

    .line 309
    invoke-direct {p0, p1}, Landroidx/webkit/WebViewAssetLoader$InternalStoragePathHandler;->isAllowedInternalStorageDir(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    nop

    .line 318
    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given directory \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" doesn\'t exist under an allowed app internal storage directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "directory":Ljava/io/File;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "directory":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve the canonical path for the given directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 316
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isAllowedInternalStorageDir(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroidx/webkit/WebViewAssetLoader$InternalStoragePathHandler;->mDirectory:Ljava/io/File;

    invoke-static {v0}, Landroidx/webkit/internal/AssetHelper;->getCanonicalDirPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "dir":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroidx/webkit/internal/AssetHelper;->getCanonicalDirPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "cacheDir":Ljava/lang/String;
    invoke-static {p1}, Landroidx/webkit/internal/AssetHelper;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroidx/webkit/internal/AssetHelper;->getCanonicalDirPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "dataDir":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    return v4

    .line 329
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 333
    :cond_1
    sget-object v3, Landroidx/webkit/WebViewAssetLoader$InternalStoragePathHandler;->FORBIDDEN_DATA_DIRS:[Ljava/lang/String;

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .line 334
    .local v7, "forbiddenPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 335
    return v4

    .line 333
    .end local v7    # "forbiddenPath":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 338
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 330
    :cond_4
    :goto_1
    return v4
.end method


# virtual methods
.method public handle(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .line 365
    const-string v0, "WebViewAssetLoader"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/webkit/WebViewAssetLoader$InternalStoragePathHandler;->mDirectory:Ljava/io/File;

    invoke-static {v2, p1}, Landroidx/webkit/internal/AssetHelper;->getCanonicalFileIfChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 366
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 367
    invoke-static {v2}, Landroidx/webkit/internal/AssetHelper;->openFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    .line 368
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {p1}, Landroidx/webkit/internal/AssetHelper;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v5, Landroid/webkit/WebResourceResponse;

    invoke-direct {v5, v4, v1, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v5

    .line 371
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_0
    const-string v3, "The requested file: %s is outside the mounted directory: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object v5, p0, Landroidx/webkit/WebViewAssetLoader$InternalStoragePathHandler;->mDirectory:Ljava/io/File;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    nop

    .end local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 375
    :catch_0
    move-exception v2

    .line 376
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening the requested path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v1, v1, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method
