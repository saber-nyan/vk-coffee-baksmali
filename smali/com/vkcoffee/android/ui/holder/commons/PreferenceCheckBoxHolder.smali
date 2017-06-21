.class public Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
.source "PreferenceCheckBoxHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef",
        "<",
        "Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field public final aSwitch:Landroid/widget/Switch;

.field public final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 60
    const v0, 0x7f03017e

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;-><init>(ILandroid/content/Context;)V

    .line 62
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->textView:Landroid/widget/TextView;

    .line 63
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->aSwitch:Landroid/widget/Switch;

    .line 64
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    .line 69
    return-void
.end method
