.class public Lnet/ypresto/androidtranscoder/utils/AvcCsdUtils;
.super Ljava/lang/Object;
.source "AvcCsdUtils.java"


# static fields
.field private static final AVC_SPS_NAL:B = 0x67t

.field private static final AVC_START_CODE_3:[B

.field private static final AVC_START_CODE_4:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/ypresto/androidtranscoder/utils/AvcCsdUtils;->AVC_START_CODE_3:[B

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lnet/ypresto/androidtranscoder/utils/AvcCsdUtils;->AVC_START_CODE_4:[B

    return-void

    .line 28
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 29
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static getSpsBuffer(Landroid/media/MediaFormat;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 37
    const-string/jumbo v2, "csd-0"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 38
    .local v1, "sourceBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, "prefixedSpsBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 42
    invoke-static {v0}, Lnet/ypresto/androidtranscoder/utils/AvcCsdUtils;->skipStartCode(Ljava/nio/ByteBuffer;)V

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/16 v3, 0x67

    if-eq v2, v3, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Got non SPS NAL data."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method private static skipStartCode(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p0, "prefixedSpsBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x3

    .line 50
    new-array v0, v3, [B

    .line 51
    .local v0, "prefix3":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 52
    sget-object v2, Lnet/ypresto/androidtranscoder/utils/AvcCsdUtils;->AVC_START_CODE_3:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    return-void

    .line 54
    :cond_1
    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 55
    .local v1, "prefix4":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v1, v3

    .line 56
    sget-object v2, Lnet/ypresto/androidtranscoder/utils/AvcCsdUtils;->AVC_START_CODE_4:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "AVC NAL start code does not found in csd."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
