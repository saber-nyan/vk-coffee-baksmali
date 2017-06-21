.class Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;
.super Landroid/app/FragmentTransaction;
.source "ContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/fragments/ContainerFragment;
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

.field final synthetic this$0:Lme/grishka/appkit/fragments/ContainerFragment;


# direct methods
.method public constructor <init>(Lme/grishka/appkit/fragments/ContainerFragment;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p2, "orig"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 170
    iput-object p1, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    .line 171
    iput-object p2, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    .line 172
    return-void
.end method

.method static synthetic access$300(Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    .prologue
    .line 166
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    return-object v0
.end method

.method static synthetic access$400(Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    .prologue
    .line 166
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    .prologue
    .line 166
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 183
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 184
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-object p0
.end method

.method public add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$000(Lme/grishka/appkit/fragments/ContainerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 193
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    return-object p0
.end method

.method public add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 177
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-object p0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Back stack not supported for inner fragments"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 207
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$000(Lme/grishka/appkit/fragments/ContainerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 209
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    return-object p0
.end method

.method public commit()I
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$100(Lme/grishka/appkit/fragments/ContainerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 218
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$200(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$200(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 229
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$600(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$1;

    invoke-direct {v1, p0}, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$1;-><init>(Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public commitAllowingStateLoss()I
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$100(Lme/grishka/appkit/fragments/ContainerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 236
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$200(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$200(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 247
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$600(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$2;

    invoke-direct {v1, p0}, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$2;-><init>(Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 253
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Back stack not supported for inner fragments"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 265
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 266
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Back stack not supported for inner fragments"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 283
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 284
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 290
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 291
    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 297
    return-object p0
.end method

.method public setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;

    .line 303
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 309
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 315
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 320
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 321
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 327
    return-object p0
.end method

.method public setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 333
    return-object p0
.end method

.method public setTransition(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 339
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setTransitionStyle(I)Landroid/app/FragmentTransaction;

    .line 350
    return-object p0
.end method

.method public show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 355
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 356
    return-object p0
.end method
