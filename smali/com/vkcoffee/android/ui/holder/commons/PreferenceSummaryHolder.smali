.class public Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
.source "PreferenceSummaryHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef",
        "<",
        "Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field public final textSummary:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    const v0, 0x7f03017f

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;-><init>(ILandroid/view/ViewGroup;)V

    .line 69
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->textTitle:Landroid/widget/TextView;

    .line 70
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->textSummary:Landroid/widget/TextView;

    .line 71
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->getRef()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->access$000(Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->getRef()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->access$000(Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method
