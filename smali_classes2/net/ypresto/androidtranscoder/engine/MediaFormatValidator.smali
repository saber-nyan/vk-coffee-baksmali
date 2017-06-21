.class Lnet/ypresto/androidtranscoder/engine/MediaFormatValidator;
.super Ljava/lang/Object;
.source "MediaFormatValidator.java"


# static fields
.field private static final PROFILE_IDC_BASELINE:B = 0x42t


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateAudioOutputFormat(Landroid/media/MediaFormat;)V
    .locals 4
    .param p0, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 45
    const-string/jumbo v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "mime":Ljava/lang/String;
    const-string/jumbo v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lnet/ypresto/androidtranscoder/engine/InvalidOutputFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio codecs other than AAC is not supported, actual mime type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/ypresto/androidtranscoder/engine/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    return-void
.end method

.method public static validateVideoOutputFormat(Landroid/media/MediaFormat;)V
    .locals 6
    .param p0, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 31
    const-string/jumbo v3, "mime"

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "mime":Ljava/lang/String;
    const-string/jumbo v3, "video/avc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    new-instance v3, Lnet/ypresto/androidtranscoder/engine/InvalidOutputFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Video codecs other than AVC is not supported, actual mime type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/ypresto/androidtranscoder/engine/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_0
    invoke-static {p0}, Lnet/ypresto/androidtranscoder/utils/AvcCsdUtils;->getSpsBuffer(Landroid/media/MediaFormat;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 38
    .local v2, "spsBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lnet/ypresto/androidtranscoder/utils/AvcSpsUtils;->getProfileIdc(Ljava/nio/ByteBuffer;)B

    move-result v1

    .line 39
    .local v1, "profileIdc":B
    const/16 v3, 0x42

    if-eq v1, v3, :cond_1

    .line 40
    new-instance v3, Lnet/ypresto/androidtranscoder/engine/InvalidOutputFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-baseline AVC video profile is not supported by Android OS, actual profile_idc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/ypresto/androidtranscoder/engine/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    :cond_1
    return-void
.end method
