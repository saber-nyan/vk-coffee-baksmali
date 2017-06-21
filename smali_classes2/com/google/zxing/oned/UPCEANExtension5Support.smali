.class final Lcom/google/zxing/oned/UPCEANExtension5Support;
.super Ljava/lang/Object;
.source "UPCEANExtension5Support.java"


# static fields
.field private static final CHECK_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static determineCheckDigit(I)I
    .locals 2
    .param p0, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 120
    sget-object v1, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 121
    return v0

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static extensionChecksum(Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 105
    .local v1, "length":I
    const/4 v2, 0x0

    .line 106
    .local v2, "sum":I
    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 107
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    .line 106
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 109
    :cond_0
    mul-int/lit8 v2, v2, 0x3

    .line 110
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 111
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    .line 110
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 113
    :cond_1
    mul-int/lit8 v2, v2, 0x3

    .line 114
    rem-int/lit8 v3, v2, 0xa

    return v3
.end method

.method private static parseExtension5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 171
    const-string/jumbo v0, ""

    .line 174
    .local v0, "currency":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 175
    .local v3, "rawAmount":I
    div-int/lit8 v5, v3, 0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "unitsString":Ljava/lang/String;
    rem-int/lit8 v1, v3, 0x64

    .line 177
    .local v1, "hundredths":I
    const/16 v5, 0xa

    if-ge v1, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "hundredthsString":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v0    # "currency":Ljava/lang/String;
    .end local v1    # "hundredths":I
    .end local v2    # "hundredthsString":Ljava/lang/String;
    .end local v3    # "rawAmount":I
    .end local v4    # "unitsString":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 149
    :sswitch_0
    const-string/jumbo v0, "\u00a3"

    .line 150
    .restart local v0    # "currency":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v0    # "currency":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "$"

    .line 153
    .restart local v0    # "currency":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v0    # "currency":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v5, "90000"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    const/4 v5, 0x0

    goto :goto_2

    .line 160
    :cond_0
    const-string/jumbo v5, "99991"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    const-string/jumbo v5, "0.00"

    goto :goto_2

    .line 164
    :cond_1
    const-string/jumbo v5, "99990"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    const-string/jumbo v5, "Used"

    goto :goto_2

    .line 168
    :cond_2
    const-string/jumbo v0, ""

    .line 169
    .restart local v0    # "currency":Ljava/lang/String;
    goto :goto_0

    .line 177
    .restart local v1    # "hundredths":I
    .restart local v3    # "rawAmount":I
    .restart local v4    # "unitsString":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
        0x39 -> :sswitch_2
    .end sparse-switch
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 136
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANExtension5Support;->parseExtension5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 14
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v5, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    .line 66
    .local v5, "counters":[I
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v5, v12

    .line 67
    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v5, v12

    .line 68
    const/4 v12, 0x2

    const/4 v13, 0x0

    aput v13, v5, v12

    .line 69
    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, v5, v12

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 71
    .local v6, "end":I
    const/4 v12, 0x1

    aget v10, p2, v12

    .line 73
    .local v10, "rowOffset":I
    const/4 v9, 0x0

    .line 75
    .local v9, "lgPatternFound":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_0
    const/4 v12, 0x5

    if-ge v11, v12, :cond_3

    if-ge v10, v6, :cond_3

    .line 76
    sget-object v12, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v5, v10, v12}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v2

    .line 77
    .local v2, "bestMatch":I
    rem-int/lit8 v12, v2, 0xa

    add-int/lit8 v12, v12, 0x30

    int-to-char v12, v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    move-object v1, v5

    .local v1, "arr$":[I
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_0

    aget v4, v1, v7

    .line 79
    .local v4, "counter":I
    add-int/2addr v10, v4

    .line 78
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 81
    .end local v4    # "counter":I
    :cond_0
    const/16 v12, 0xa

    if-lt v2, v12, :cond_1

    .line 82
    const/4 v12, 0x1

    rsub-int/lit8 v13, v11, 0x4

    shl-int/2addr v12, v13

    or-int/2addr v9, v12

    .line 84
    :cond_1
    const/4 v12, 0x4

    if-eq v11, v12, :cond_2

    .line 86
    invoke-virtual {p1, v10}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v10

    .line 87
    invoke-virtual {p1, v10}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v10

    .line 75
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "arr$":[I
    .end local v2    # "bestMatch":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_4

    .line 92
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 95
    :cond_4
    invoke-static {v9}, Lcom/google/zxing/oned/UPCEANExtension5Support;->determineCheckDigit(I)I

    move-result v3

    .line 96
    .local v3, "checkDigit":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/zxing/oned/UPCEANExtension5Support;->extensionChecksum(Ljava/lang/CharSequence;)I

    move-result v12

    if-eq v12, v3, :cond_5

    .line 97
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 100
    :cond_5
    return v10
.end method

.method decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    .locals 12
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "extensionStartRange"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 43
    iget-object v3, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 44
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    invoke-virtual {p0, p2, p3, v3}, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v0

    .line 47
    .local v0, "end":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "resultString":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/zxing/oned/UPCEANExtension5Support;->parseExtensionString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 50
    .local v1, "extensionData":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    new-instance v2, Lcom/google/zxing/Result;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v8, p3, v10

    aget v9, p3, v11

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v6, v10

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v0

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v6, v11

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 58
    .local v2, "extensionResult":Lcom/google/zxing/Result;
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v2, v1}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 61
    :cond_0
    return-object v2
.end method
