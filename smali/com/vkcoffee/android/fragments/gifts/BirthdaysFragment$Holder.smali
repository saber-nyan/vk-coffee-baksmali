.class Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;
.super Lcom/vkcoffee/android/ui/holder/UserHolder;
.source "BirthdaysFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/UserHolder",
        "<",
        "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfo:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;Landroid/view/ViewGroup;)V
    .locals 9
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f020116

    const/4 v3, 0x1

    const v7, -0xae7e48

    const/4 v6, 0x0

    .line 163
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    .line 164
    const v2, 0x7f03018d

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    .line 165
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mInfo:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mActionButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mActionButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mActionButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mActionButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;)V
    .locals 4
    .param p1, "user"    # Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 175
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mSubtitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->upcoming:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mInfo:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->upcoming:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mActionButton:Landroid/view/View;

    iget-boolean v3, p1, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->isToday:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    return-void

    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->mSubtitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v2, v1

    .line 183
    goto :goto_2
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    check-cast p1, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->bind(Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;)V

    return-void
.end method
