.class public Lcom/vk/attachpicker/PhotoVideoAttachActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PhotoVideoAttachActivity.java"

# interfaces
.implements Lcom/vk/attachpicker/SelectionContext$SelectionContextProvider;
.implements Lcom/vk/attachpicker/AttachResulter;


# instance fields
.field private attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

.field private cancelView:Landroid/view/View;

.field private completeOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private completeSingleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private galleryFragment:Lcom/vk/attachpicker/fragment/GalleryFragment;

.field private mediaType:I

.field private final onSelectionUpdate:Lcom/vk/attachpicker/events/NotificationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/attachpicker/events/NotificationListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private preventStyling:Z

.field private requestCode:I

.field private final selectionContext:Lcom/vk/attachpicker/SelectionContext;

.field private singleMode:Z

.field private thumb:Z

.field private toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/vk/attachpicker/SelectionContext;

    invoke-direct {v0}, Lcom/vk/attachpicker/SelectionContext;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    .line 207
    new-instance v0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;-><init>(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)V

    iput-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->onSelectionUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->cancelView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Lcom/vk/attachpicker/SelectionContext;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Lcom/vk/attachpicker/widget/AttachCounterView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->hideCancelButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->showCancelButton()V

    return-void
.end method

.method private hideCancelButton()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->cancelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/PhotoVideoAttachActivity$2;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity$2;-><init>(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 203
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 205
    return-void
.end method

.method private showCancelButton()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->cancelView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->cancelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 190
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 192
    return-void
.end method

.method private showFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fr"    # Landroid/app/Fragment;

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1002f0

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PhotoVideoAttachActivity"

    invoke-static {v1, v0}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showOptions(Landroid/content/Intent;)V
    .locals 5
    .param p1, "result"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getCompleteOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 130
    .local v1, "options":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 131
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->finishActivity(I)V

    .line 149
    :goto_0
    return-void

    .line 137
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0035

    iget-object v4, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v4}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance v2, Lcom/vk/attachpicker/PhotoVideoAttachActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/vk/attachpicker/PhotoVideoAttachActivity$1;-><init>(Lcom/vk/attachpicker/PhotoVideoAttachActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getCompleteOptions()[Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 156
    iget-object v7, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeOptions:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeSingleOptions:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 157
    const/4 v2, 0x0

    .line 182
    :cond_0
    return-object v2

    .line 160
    :cond_1
    iget-object v7, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeOptions:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->singleMode:Z

    if-nez v7, :cond_4

    move v3, v5

    .line 161
    .local v3, "useOptions":Z
    :goto_0
    iget-object v7, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeSingleOptions:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->singleMode:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v7}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v7

    if-gt v7, v5, :cond_5

    :cond_2
    move v4, v5

    .line 163
    .local v4, "useSingleOptions":Z
    :goto_1
    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeOptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeSingleOptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_3
    add-int/2addr v5, v6

    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 165
    .local v2, "sequences":[Ljava/lang/CharSequence;
    array-length v5, v2

    if-eqz v5, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, "j":I
    if-eqz v3, :cond_7

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v5, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeOptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 172
    iget-object v5, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeOptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v2, v1

    .line 171
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "sequences":[Ljava/lang/CharSequence;
    .end local v3    # "useOptions":Z
    .end local v4    # "useSingleOptions":Z
    :cond_4
    move v3, v6

    .line 160
    goto :goto_0

    .restart local v3    # "useOptions":Z
    :cond_5
    move v4, v6

    .line 161
    goto :goto_1

    .restart local v4    # "useSingleOptions":Z
    :cond_6
    move v5, v6

    .line 163
    goto :goto_2

    .line 176
    .restart local v1    # "j":I
    .restart local v2    # "sequences":[Ljava/lang/CharSequence;
    :cond_7
    if-eqz v4, :cond_0

    .line 177
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeSingleOptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeSingleOptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v2, v1

    .line 177
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getCompleteOptionsSize()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeOptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->singleMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionContext()Lcom/vk/attachpicker/SelectionContext;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    return-object v0
.end method

.method synthetic lambda$onCreate$80(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->getPackedSelection()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->setResultAndFinish(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method synthetic lambda$onCreate$81(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->clear()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {p0}, Lcom/vk/attachpicker/Picker;->init(Landroid/app/Activity;)V

    .line 46
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, -0x808081

    invoke-static {v1, v3}, Lcom/vk/attachpicker/util/Utils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 48
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "prevent_styling"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->preventStyling:Z

    .line 49
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "single_mode"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->singleMode:Z

    .line 50
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "media_type"

    const/16 v4, 0xde

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->mediaType:I

    .line 51
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "force_thumb"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->thumb:Z

    .line 52
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "request_code"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->requestCode:I

    .line 53
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "complete_options"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "complete_options"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeOptions:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "complete_options_single"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "complete_options_single"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->completeSingleOptions:Ljava/util/ArrayList;

    .line 56
    iget-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "selection_limit"

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/SelectionContext;->setLimit(I)V

    .line 57
    iget-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    iget v2, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->requestCode:I

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/SelectionContext;->setRequestCode(I)V

    .line 59
    const v1, 0x7f030111

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->setContentView(I)V

    .line 60
    const v1, 0x7f1002ef

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/ToolbarContainer;

    iput-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;

    .line 61
    const v1, 0x7f1002df

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/AttachCounterView;

    iput-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    .line 62
    const v1, 0x7f1002e0

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->cancelView:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    invoke-static {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/AttachCounterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->cancelView:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "prevent_styling"

    iget-boolean v2, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->preventStyling:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    const-string/jumbo v1, "single_mode"

    iget-boolean v2, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->singleMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    const-string/jumbo v1, "media_type"

    iget v2, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->mediaType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string/jumbo v1, "force_thumb"

    iget-boolean v2, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->thumb:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    new-instance v1, Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-direct {v1}, Lcom/vk/attachpicker/fragment/GalleryFragment;-><init>()V

    iput-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->galleryFragment:Lcom/vk/attachpicker/fragment/GalleryFragment;

    .line 75
    iget-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->galleryFragment:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    iget-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;

    iget-object v2, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->galleryFragment:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-virtual {v2, p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/ToolbarContainer;->addView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->galleryFragment:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->showFragment(Landroid/app/Fragment;)V

    .line 79
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->onSelectionUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v1, v2, v3}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(ILcom/vk/attachpicker/events/NotificationListener;)V

    .line 80
    return-void

    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    move-object v1, v2

    .line 53
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 85
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->onSelectionUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 86
    return-void
.end method

.method public setResultAndFinish(Landroid/content/Intent;)V
    .locals 1
    .param p1, "result"    # Landroid/content/Intent;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->finish()V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->getCompleteOptionsSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 120
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->showOptions(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->finish()V

    goto :goto_0
.end method
