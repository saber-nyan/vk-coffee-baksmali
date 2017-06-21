.class public abstract Lme/grishka/appkit/fragments/ToolbarFragment;
.super Lme/grishka/appkit/fragments/ContainerFragment;
.source "ToolbarFragment.java"


# instance fields
.field protected content:Landroid/view/View;

.field protected layoutID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    sget v0, Lme/grishka/appkit/R$layout;->appkit_toolbar_fragment:I

    invoke-direct {p0, v0}, Lme/grishka/appkit/fragments/ToolbarFragment;-><init>(I)V

    .line 23
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ContainerFragment;-><init>()V

    .line 26
    iput p1, p0, Lme/grishka/appkit/fragments/ToolbarFragment;->layoutID:I

    .line 27
    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 31
    iget v0, p0, Lme/grishka/appkit/fragments/ToolbarFragment;->layoutID:I

    return v0
.end method

.method public abstract onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    iget v1, p0, Lme/grishka/appkit/fragments/ToolbarFragment;->layoutID:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/grishka/appkit/fragments/ToolbarFragment;->content:Landroid/view/View;

    .line 44
    iget-object v1, p0, Lme/grishka/appkit/fragments/ToolbarFragment;->content:Landroid/view/View;

    sget v2, Lme/grishka/appkit/R$id;->appkit_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .local v0, "contentWrap":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/ToolbarFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    iget-object v1, p0, Lme/grishka/appkit/fragments/ToolbarFragment;->content:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->onDestroyView()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/ToolbarFragment;->content:Landroid/view/View;

    .line 54
    return-void
.end method

.method protected setLayout(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lme/grishka/appkit/fragments/ToolbarFragment;->content:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t set layout when view is already created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput p1, p0, Lme/grishka/appkit/fragments/ToolbarFragment;->layoutID:I

    .line 38
    return-void
.end method
