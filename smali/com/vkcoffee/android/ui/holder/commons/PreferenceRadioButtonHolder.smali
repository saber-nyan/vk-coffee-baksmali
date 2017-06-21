.class public Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "PreferenceRadioButtonHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field private checkedTextView:Landroid/widget/CheckedTextView;

.field private lastPrivacyRule:Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

.field private final listener:Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "listener":Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener;, "Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener<Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;>;"
    const v0, 0x7f03015f

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 25
    const v0, 0x7f100125

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    .line 26
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->listener:Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener;

    .line 27
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;->getEditTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->lastPrivacyRule:Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    .line 33
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->bind(Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->listener:Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->listener:Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->lastPrivacyRule:Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener;->onRadioButtonClick(Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setChecked(Z)Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 37
    return-object p0
.end method
