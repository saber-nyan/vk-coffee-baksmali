.class public Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "PreferenceIconItemHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;",
        ">",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<TT;>;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field private final clickFunk:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final icon:Landroid/view/View;

.field protected final text:Landroid/widget/TextView;

.field private value:Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/functions/VoidF1;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2    # Lcom/vkcoffee/android/functions/VoidF1;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;, "Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder<TT;>;"
    .local p2, "clickFunk":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<TT;>;"
    const v0, 0x7f0300b3

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 38
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->icon:Landroid/view/View;

    .line 39
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->text:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->onViewInit()V

    .line 41
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->clickFunk:Lcom/vkcoffee/android/functions/VoidF1;

    .line 42
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;, "Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder<TT;>;"
    .local p1, "item":Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;, "TT;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->value:Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->icon:Landroid/view/View;

    iget v1, p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->text:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;->text:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;, "Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder<TT;>;"
    check-cast p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->bind(Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;, "Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->clickFunk:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->clickFunk:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->value:Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onViewInit()V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;, "Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder<TT;>;"
    return-void
.end method
