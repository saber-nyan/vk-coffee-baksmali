.class public Lcom/vkcoffee/android/ui/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static truncate(II)I
    .locals 2
    .param p0, "item"    # I
    .param p1, "to"    # I

    .prologue
    .line 24
    div-int v1, p0, p1

    mul-int v0, v1, p1

    .line 25
    .local v0, "boundary":I
    if-ne v0, p0, :cond_0

    .line 26
    sub-int/2addr v0, p1

    .line 28
    :cond_0
    return v0
.end method
