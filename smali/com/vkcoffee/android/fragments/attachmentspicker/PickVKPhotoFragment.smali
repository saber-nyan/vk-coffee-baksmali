.class public Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;
.super Lme/grishka/appkit/fragments/ContainerFragment;
.source "PickVKPhotoFragment.java"

# interfaces
.implements Lcom/vk/attachpicker/SupportExternalToolbarContainer;


# static fields
.field private static final INNER_FRAGMENT_TAG:Ljava/lang/String; = "INNER_PHOTO_FRAGMENT"


# instance fields
.field private albumsFragment:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

.field private allPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

.field private currentPos:I

.field private needRecreateInnerFragment:Z

.field private spinnerItemsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private userPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ContainerFragment;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->currentPos:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->needRecreateInnerFragment:Z

    return-void
.end method


# virtual methods
.method public getAlbumsFragment()Landroid/app/Fragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 203
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->albumsFragment:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    if-nez v1, :cond_0

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->albumsFragment:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .line 206
    const-string/jumbo v1, "uid"

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string/jumbo v1, "no_title"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    const-string/jumbo v1, "need_system"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    const-string/jumbo v1, "__is_tab"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->albumsFragment:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 213
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->albumsFragment:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->disableRefresh()V

    .line 214
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->albumsFragment:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->loadData()V

    .line 216
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->albumsFragment:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    return-object v1
.end method

.method public getAllPhotosFragment()Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 183
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->allPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    if-nez v2, :cond_0

    .line 184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v1, "args":Landroid/os/Bundle;
    new-instance v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>()V

    .line 186
    .local v0, "allPhotos":Lcom/vkcoffee/android/api/PhotoAlbum;
    const v2, 0x7f08006f

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 187
    const/16 v2, -0x232a

    iput v2, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 188
    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    iput v2, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    .line 189
    new-instance v2, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;

    invoke-direct {v2}, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->allPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    .line 190
    const-string/jumbo v2, "album"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    const-string/jumbo v2, "no_album_header"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string/jumbo v2, "select"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    const-string/jumbo v2, "autoload"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string/jumbo v2, "__is_tab"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->allPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 196
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->allPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->disableRefresh()V

    .line 199
    .end local v0    # "allPhotos":Lcom/vkcoffee/android/api/PhotoAlbum;
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->allPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    return-object v2
.end method

.method public getUserPhotosFragment()Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 220
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->userPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    if-nez v2, :cond_0

    .line 221
    new-instance v1, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>()V

    .line 222
    .local v1, "userPhotos":Lcom/vkcoffee/android/api/PhotoAlbum;
    const v2, 0x7f08057a

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 223
    const/16 v2, -0x2328

    iput v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 224
    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    iput v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "album"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 227
    const-string/jumbo v2, "no_album_header"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    const-string/jumbo v2, "select"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    const-string/jumbo v2, "__is_tab"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    new-instance v2, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-direct {v2}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->userPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    .line 231
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->userPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 232
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->userPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->disableRefresh()V

    .line 233
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->userPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->loadData()V

    .line 235
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "userPhotos":Lcom/vkcoffee/android/api/PhotoAlbum;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->userPhotosFragment:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    return-object v2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    const-string/jumbo v0, "PickVKPhotoFragment"

    const-string/jumbo v1, "onAttach"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->spinnerItemsData:Ljava/util/ArrayList;

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->spinnerItemsData:Ljava/util/ArrayList;

    const v1, 0x7f080070

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->spinnerItemsData:Ljava/util/ArrayList;

    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->spinnerItemsData:Ljava/util/ArrayList;

    const v1, 0x7f080350

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const v0, 0x7f030172

    iput v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->spinnerViewResourceId:I

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const-string/jumbo v1, "PickVKPhotoFragment"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "content":Landroid/view/View;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->onDestroyView()V

    .line 134
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "INNER_PHOTO_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 136
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 140
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->needRecreateInnerFragment:Z

    .line 142
    return-void
.end method

.method protected onSpinnerItemSelected(I)Z
    .locals 6
    .param p1, "pos"    # I

    .prologue
    const/4 v5, 0x1

    .line 96
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->needRecreateInnerFragment:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->currentPos:I

    if-ne p1, v3, :cond_0

    .line 124
    :goto_0
    return v5

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 100
    .local v0, "f":Landroid/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_1
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 114
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 116
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const v3, 0x7f100113

    const-string/jumbo v4, "INNER_PHOTO_FRAGMENT"

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 117
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 120
    .end local v1    # "fm":Landroid/app/FragmentManager;
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_1
    iput p1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->currentPos:I

    .line 122
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->needRecreateInnerFragment:Z

    goto :goto_0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getAllPhotosFragment()Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    move-result-object v0

    .line 103
    goto :goto_1

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getAlbumsFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 106
    goto :goto_1

    .line 108
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getUserPhotosFragment()Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    move-result-object v0

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->spinnerItemsData:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->setSpinnerItems(Ljava/util/List;)V

    .line 172
    iget v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->currentPos:I

    if-ltz v0, :cond_0

    .line 173
    iget v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->currentPos:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->setSelectedNavigationItem(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method
