.class public Lnet/ypresto/androidtranscoder/utils/AvcSpsUtils;
.super Ljava/lang/Object;
.source "AvcSpsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfileIdc(Ljava/nio/ByteBuffer;)B
    .locals 1
    .param p0, "spsBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method
