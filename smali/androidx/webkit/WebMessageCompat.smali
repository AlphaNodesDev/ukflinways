.class public Landroidx/webkit/WebMessageCompat;
.super Ljava/lang/Object;
.source "WebMessageCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebMessageCompat$Type;
    }
.end annotation


# static fields
.field public static final TYPE_ARRAY_BUFFER:I = 0x1

.field public static final TYPE_STRING:I


# instance fields
.field private final mArrayBuffer:[B

.field private final mPorts:[Landroidx/webkit/WebMessagePortCompat;

.field private final mString:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/webkit/WebMessageCompat;-><init>(Ljava/lang/String;[Landroidx/webkit/WebMessagePortCompat;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroidx/webkit/WebMessagePortCompat;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ports"    # [Landroidx/webkit/WebMessagePortCompat;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/webkit/WebMessageCompat;->mString:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/webkit/WebMessageCompat;->mArrayBuffer:[B

    .line 71
    iput-object p2, p0, Landroidx/webkit/WebMessageCompat;->mPorts:[Landroidx/webkit/WebMessagePortCompat;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroidx/webkit/WebMessageCompat;->mType:I

    .line 73
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "arrayBuffer"    # [B

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/webkit/WebMessageCompat;-><init>([B[Landroidx/webkit/WebMessagePortCompat;)V

    .line 86
    return-void
.end method

.method public constructor <init>([B[Landroidx/webkit/WebMessagePortCompat;)V
    .locals 1
    .param p1, "arrayBuffer"    # [B
    .param p2, "ports"    # [Landroidx/webkit/WebMessagePortCompat;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Landroidx/webkit/WebMessageCompat;->mArrayBuffer:[B

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/webkit/WebMessageCompat;->mString:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Landroidx/webkit/WebMessageCompat;->mPorts:[Landroidx/webkit/WebMessagePortCompat;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Landroidx/webkit/WebMessageCompat;->mType:I

    .line 105
    return-void
.end method


# virtual methods
.method public getArrayBuffer()[B
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/webkit/WebMessageCompat;->mArrayBuffer:[B

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/webkit/WebMessageCompat;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[Landroidx/webkit/WebMessagePortCompat;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/webkit/WebMessageCompat;->mPorts:[Landroidx/webkit/WebMessagePortCompat;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 114
    iget v0, p0, Landroidx/webkit/WebMessageCompat;->mType:I

    return v0
.end method
