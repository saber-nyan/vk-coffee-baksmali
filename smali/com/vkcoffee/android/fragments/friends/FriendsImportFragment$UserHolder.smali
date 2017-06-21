.class Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;
.super Lcom/vkcoffee/android/ui/holder/UserHolder;
.source "FriendsImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/UserHolder",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;Landroid/view/ViewGroup;)V
    .locals 6
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 337
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    .line 338
    const v2, 0x7f03017d

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    .line 339
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 343
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 344
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 335
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->openProfile(Lcom/vkcoffee/android/UserProfile;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->mActionButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->addFriend(Lcom/vkcoffee/android/UserProfile;I)V

    .line 355
    :cond_1
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;->mImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/RoundedDrawable;

    invoke-direct {v1, p2}, Lcom/vkcoffee/android/ui/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/RoundedDrawable;->setRadius(I)Lcom/vkcoffee/android/ui/RoundedDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    return-void
.end method
