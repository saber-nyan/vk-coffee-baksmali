.class public Lcom/vk/attachpicker/util/ArgbEvaluator;
.super Ljava/lang/Object;
.source "ArgbEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# static fields
.field private static final sInstance:Lcom/vk/attachpicker/util/ArgbEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/vk/attachpicker/util/ArgbEvaluator;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/util/ArgbEvaluator;->sInstance:Lcom/vk/attachpicker/util/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vk/attachpicker/util/ArgbEvaluator;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vk/attachpicker/util/ArgbEvaluator;->sInstance:Lcom/vk/attachpicker/util/ArgbEvaluator;

    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "startValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 50
    .local v8, "startInt":I
    shr-int/lit8 v10, v8, 0x18

    and-int/lit16 v5, v10, 0xff

    .line 51
    .local v5, "startA":I
    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v9, v10, 0xff

    .line 52
    .local v9, "startR":I
    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v7, v10, 0xff

    .line 53
    .local v7, "startG":I
    and-int/lit16 v6, v8, 0xff

    .line 55
    .local v6, "startB":I
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 56
    .local v3, "endInt":I
    shr-int/lit8 v10, v3, 0x18

    and-int/lit16 v0, v10, 0xff

    .line 57
    .local v0, "endA":I
    shr-int/lit8 v10, v3, 0x10

    and-int/lit16 v4, v10, 0xff

    .line 58
    .local v4, "endR":I
    shr-int/lit8 v10, v3, 0x8

    and-int/lit16 v2, v10, 0xff

    .line 59
    .local v2, "endG":I
    and-int/lit16 v1, v3, 0xff

    .line 61
    .local v1, "endB":I
    sub-int v10, v0, v5

    int-to-float v10, v10

    mul-float/2addr v10, p1

    float-to-int v10, v10

    add-int/2addr v10, v5

    shl-int/lit8 v10, v10, 0x18

    sub-int v11, v4, v9

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v9

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    sub-int v11, v2, v7

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v7

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    sub-int v11, v1, v6

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v6

    or-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    return-object v10
.end method
