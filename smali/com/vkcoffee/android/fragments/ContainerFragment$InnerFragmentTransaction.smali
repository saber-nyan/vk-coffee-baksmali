.class Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;
.super Landroid/app/FragmentTransaction;
.source "ContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerFragmentTransaction"
.end annotation


# instance fields
.field private fragmentsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/app/FragmentTransaction;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ContainerFragment;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p2, "orig"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    .line 170
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    .line 171
    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    return-object p0
.end method

.method public add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$000(Lcom/vkcoffee/android/fragments/ContainerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-object p0
.end method

.method public add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    return-object p0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Back stack not supported for inner fragments"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$000(Lcom/vkcoffee/android/fragments/ContainerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    return-object p0
.end method

.method public commit()I
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$100(Lcom/vkcoffee/android/fragments/ContainerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 217
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$200(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$200(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 228
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$600(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$1;-><init>(Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public commitAllowingStateLoss()I
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$100(Lcom/vkcoffee/android/fragments/ContainerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$200(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 236
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$200(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 246
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$600(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$2;-><init>(Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Back stack not supported for inner fragments"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 265
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Back stack not supported for inner fragments"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 290
    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 296
    return-object p0
.end method

.method public setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;

    .line 302
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 308
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 314
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 320
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 326
    return-object p0
.end method

.method public setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 332
    return-object p0
.end method

.method public setTransition(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 338
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setTransitionStyle(I)Landroid/app/FragmentTransaction;

    .line 349
    return-object p0
.end method

.method public show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 355
    return-object p0
.end method
