.class Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;
.super Lcom/vkcoffee/android/ui/holder/UserHolder;
.source "QuickSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/UserHolder",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mIsUser:Z

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;Landroid/view/ViewGroup;)V
    .locals 6
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 303
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .line 304
    const v2, 0x7f03015d

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    .line 305
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/UserProfile;)V
    .locals 4
    .param p1, "item"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 324
    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$1000(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mSubtitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vk.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$1000(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    sparse-switch v0, :sswitch_data_0

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mIsUser:Z

    .line 346
    :goto_2
    return-void

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    .line 332
    :sswitch_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mIsUser:Z

    .line 333
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01000b

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ViewUtils;->getResFromTheme(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 337
    :sswitch_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mIsUser:Z

    .line 338
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f0201ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 330
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7fffffff -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 299
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mIsUser:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f0202c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$1100(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$1100(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 353
    :cond_0
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mIsUser:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    :cond_0
    return-void
.end method
