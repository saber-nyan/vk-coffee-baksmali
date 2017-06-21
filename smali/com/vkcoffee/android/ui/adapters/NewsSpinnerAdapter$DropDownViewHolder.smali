.class Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;
.super Ljava/lang/Object;
.source "NewsSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DropDownViewHolder"
.end annotation


# instance fields
.field final aSwitch:Landroid/support/v7/widget/SwitchCompat;

.field final itemView:Landroid/view/View;

.field final title:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;->itemView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;->title:Landroid/widget/CheckedTextView;

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;->aSwitch:Landroid/support/v7/widget/SwitchCompat;

    .line 76
    return-void
.end method

.method public static get(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    if-nez p0, :cond_0

    new-instance v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;-><init>(Landroid/view/ViewGroup;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;

    goto :goto_0
.end method
