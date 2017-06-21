.class public final Lcom/googlecode/mp4parser/util/Mp4Arrays;
.super Ljava/lang/Object;
.source "Mp4Arrays.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static varargs copyOfAndAppend([D[D)[D
    .locals 4
    .param p0, "original"    # [D
    .param p1, "toAppend"    # [D

    .prologue
    const/4 v3, 0x0

    .line 38
    if-nez p0, :cond_0

    .line 39
    new-array p0, v3, [D

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 42
    new-array p1, v3, [D

    .line 44
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [D

    .line 45
    .local v0, "copy":[D
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    return-object v0
.end method

.method public static varargs copyOfAndAppend([I[I)[I
    .locals 4
    .param p0, "original"    # [I
    .param p1, "toAppend"    # [I

    .prologue
    const/4 v3, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    new-array p0, v3, [I

    .line 28
    :cond_0
    if-nez p1, :cond_1

    .line 29
    new-array p1, v3, [I

    .line 31
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 32
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-object v0
.end method

.method public static varargs copyOfAndAppend([J[J)[J
    .locals 4
    .param p0, "original"    # [J
    .param p1, "toAppend"    # [J

    .prologue
    const/4 v3, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    new-array p0, v3, [J

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    new-array p1, v3, [J

    .line 17
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [J

    .line 18
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    return-object v0
.end method
