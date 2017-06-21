.class Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "FriendsImportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mData:Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mSubtitle:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    .line 371
    const v0, 0x7f03008e

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 372
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->mTitle:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->mSubtitle:Landroid/widget/TextView;

    .line 374
    const v0, 0x7f1000dc

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->mIcon:Landroid/widget/ImageView;

    .line 375
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;)V
    .locals 2
    .param p1, "data"    # Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->mData:Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;

    .line 381
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 363
    check-cast p1, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->bind(Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->mData:Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;->mData:Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->action()V

    .line 391
    :cond_0
    return-void
.end method
