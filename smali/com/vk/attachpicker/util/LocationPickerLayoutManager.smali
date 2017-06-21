.class public Lcom/vk/attachpicker/util/LocationPickerLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "LocationPickerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;
    }
.end annotation


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private final context:Landroid/content/Context;

.field private expanded:Z

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->context:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 32
    iput-object p1, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->expanded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->getCollapsedMapHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->getExpandedMapHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private getCollapsedMapHeight()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getExpandedMapHeight()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->expanded:Z

    return v0
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->expanded:Z

    .line 50
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    new-instance v0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;

    iget-object v1, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;-><init>(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;Landroid/content/Context;)V

    .line 40
    .local v0, "linearSmoothScroller":Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;
    invoke-virtual {v0, p3}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;->setTargetPosition(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 42
    return-void
.end method
