.class public Lcom/vkcoffee/android/ui/widget/VKRecyclerView;
.super Lme/grishka/appkit/views/UsableRecyclerView;
.source "VKRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;
    }
.end annotation


# instance fields
.field public final delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;-><init>(Lcom/vkcoffee/android/ui/widget/VKRecyclerView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;-><init>(Lcom/vkcoffee/android/ui/widget/VKRecyclerView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance v0, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;-><init>(Lcom/vkcoffee/android/ui/widget/VKRecyclerView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    .line 24
    return-void
.end method
