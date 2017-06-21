.class Lme/grishka/appkit/fragments/TabbedScreen$Delegate$TabAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "TabbedScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/fragments/TabbedScreen$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;


# direct methods
.method public constructor <init>(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$TabAdapter;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    .line 71
    invoke-static {p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$4(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Lme/grishka/appkit/fragments/ContainerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$TabAdapter;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$1(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$TabAdapter;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$1(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$TabAdapter;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$5(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
