.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCEReader.java"


# static fields
.field private static final MIDDLE_END_PATTERN:[I

.field private static final NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    return-void

    .line 37
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_2
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 53
    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "upce"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 121
    const/4 v3, 0x6

    new-array v2, v3, [C

    .line 122
    .local v2, "upceChars":[C
    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    aget-char v0, v2, v9

    .line 126
    .local v0, "lastChar":C
    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-virtual {v1, v2, v5, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :goto_0
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 130
    :pswitch_0
    invoke-virtual {v1, v2, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1, v2, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {v1, v2, v5, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v3, "00000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v2, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {v1, v2, v5, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v3, "00000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    aget-char v3, v2, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p0, "resultString"    # Ljava/lang/StringBuilder;
    .param p1, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    .local v1, "numSys":I
    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 98
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 99
    sget-object v2, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 100
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    return-void

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "d":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method protected checkChecksum(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "endStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 12
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v3, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 59
    .local v3, "counters":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 60
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 61
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 62
    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 63
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 64
    .local v4, "end":I
    const/4 v10, 0x1

    aget v8, p2, v10

    .line 66
    .local v8, "rowOffset":I
    const/4 v7, 0x0

    .line 68
    .local v7, "lgPatternFound":I
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_0
    const/4 v10, 0x6

    if-ge v9, v10, :cond_2

    if-ge v8, v4, :cond_2

    .line 69
    sget-object v10, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v3, v8, v10}, Lcom/google/zxing/oned/UPCEReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v1

    .line 70
    .local v1, "bestMatch":I
    rem-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_0

    aget v2, v0, v5

    .line 72
    .local v2, "counter":I
    add-int/2addr v8, v2

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 74
    .end local v2    # "counter":I
    :cond_0
    const/16 v10, 0xa

    if-lt v1, v10, :cond_1

    .line 75
    const/4 v10, 0x1

    rsub-int/lit8 v11, v9, 0x5

    shl-int/2addr v10, v11

    or-int/2addr v7, v10

    .line 68
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "arr$":[I
    .end local v1    # "bestMatch":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    invoke-static {p3, v7}, Lcom/google/zxing/oned/UPCEReader;->determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V

    .line 81
    return v8
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
