.class public Lcom/vk/attachpicker/widget/TabsLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "TabsLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/TabsLayoutManager$VkLinearSmoothScroller;
    }
.end annotation


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 150.0f


# instance fields
.field private final context:Landroid/content/Context;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TabsLayoutManager;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 28
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TabsLayoutManager;->context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TabsLayoutManager;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 35
    new-instance v0, Lcom/vk/attachpicker/widget/TabsLayoutManager$VkLinearSmoothScroller;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/TabsLayoutManager;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/widget/TabsLayoutManager$VkLinearSmoothScroller;-><init>(Lcom/vk/attachpicker/widget/TabsLayoutManager;Landroid/content/Context;)V

    .line 36
    .local v0, "linearSmoothScroller":Lcom/vk/attachpicker/widget/TabsLayoutManager$VkLinearSmoothScroller;
    invoke-virtual {v0, p3}, Lcom/vk/attachpicker/widget/TabsLayoutManager$VkLinearSmoothScroller;->setTargetPosition(I)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/TabsLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 38
    return-void
.end method
