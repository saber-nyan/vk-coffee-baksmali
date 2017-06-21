.class public Lcom/vk/attachpicker/util/DynamicFloatArray;
.super Ljava/lang/Object;
.source "DynamicFloatArray.java"


# instance fields
.field private data:[F

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 16
    const/16 p1, 0x10

    .line 18
    :cond_0
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    .line 20
    return-void
.end method

.method private rangeCheck(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 44
    iget v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public add(F)Z
    .locals 3
    .param p1, "element"    # F

    .prologue
    .line 58
    iget v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/util/DynamicFloatArray;->ensureCapacity(I)V

    .line 59
    iget-object v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    iget v1, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    aput p1, v0, v1

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public capacity()F
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    array-length v0, v0

    int-to-float v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    .line 66
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    .line 23
    iget-object v2, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    array-length v1, v2

    .line 24
    .local v1, "oldCapacity":I
    if-le p1, v1, :cond_1

    .line 25
    mul-int/lit8 v0, v1, 0x2

    .line 26
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 27
    move v0, p1

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    .line 31
    .end local v0    # "newCapacity":I
    :cond_1
    return-void
.end method

.method public get(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/util/DynamicFloatArray;->rangeCheck(I)V

    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    aget v0, v0, p1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IF)F
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # F

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/util/DynamicFloatArray;->rangeCheck(I)V

    .line 71
    iget-object v1, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    aget v0, v1, p1

    .line 72
    .local v0, "oldValue":F
    iget-object v1, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->data:[F

    aput p2, v1, p1

    .line 73
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vk/attachpicker/util/DynamicFloatArray;->size:I

    return v0
.end method
