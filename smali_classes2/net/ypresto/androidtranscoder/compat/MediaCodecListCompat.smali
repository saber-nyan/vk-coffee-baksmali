.class public Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;
.super Ljava/lang/Object;
.source "MediaCodecListCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;
    }
.end annotation


# static fields
.field public static final ALL_CODECS:I = 0x1

.field public static final REGULAR_CODECS:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "kind"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "kind other than REGULAR_CODECS is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;->getCodecCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Landroid/media/MediaCodecInfo;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 30
    invoke-static {p0}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method private findCoderForFormat(Landroid/media/MediaFormat;Z)Ljava/lang/String;
    .locals 5
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "findEncoder"    # Z

    .prologue
    const/4 v3, 0x0

    .line 49
    const-string/jumbo v4, "mime"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "mimeType":Ljava/lang/String;
    new-instance v1, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;

    invoke-direct {v1, p0, v3}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;-><init>(Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$1;)V

    .line 51
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaCodecInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodecInfo;

    .line 53
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 58
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_1
    return-object v3
.end method

.method private static getCodecCount()I
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method private static getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 76
    invoke-static {p0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;->findCoderForFormat(Landroid/media/MediaFormat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;->findCoderForFormat(Landroid/media/MediaFormat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCodecInfos()[Landroid/media/MediaCodecInfo;
    .locals 5

    .prologue
    .line 62
    invoke-static {}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;->getCodecCount()I

    move-result v0

    .line 63
    .local v0, "codecCount":I
    new-array v1, v0, [Landroid/media/MediaCodecInfo;

    .line 64
    .local v1, "codecInfos":[Landroid/media/MediaCodecInfo;
    new-instance v3, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;-><init>(Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$1;)V

    .line 65
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaCodecInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 66
    invoke-static {v2}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    aput-object v4, v1, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object v1
.end method
