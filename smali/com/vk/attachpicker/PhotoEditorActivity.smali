.class public Lcom/vk/attachpicker/PhotoEditorActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PhotoEditorActivity.java"

# interfaces
.implements Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;
.implements Lcom/vk/attachpicker/AttachResulter;


# instance fields
.field private screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

.field private thumb:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final $(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/PhotoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onCreate$79(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onTopPaddingChanged(I)V

    .line 38
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 72
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {p0}, Lcom/vk/attachpicker/util/KeyboardUtils;->setSoftInputModeNothing(Landroid/app/Activity;)V

    .line 26
    invoke-static {p0}, Lcom/vk/attachpicker/Picker;->init(Landroid/app/Activity;)V

    .line 28
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "force_thumb"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->thumb:Z

    .line 30
    const v2, 0x7f030125

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/PhotoEditorActivity;->setContentView(I)V

    .line 32
    const v2, 0x7f10031b

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/PhotoEditorActivity;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    iput-object v2, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    .line 33
    iget-object v2, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v2, p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->setOnDismissListener(Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;)V

    .line 35
    const v2, 0x7f10031c

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/PhotoEditorActivity;->$(I)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/vk/attachpicker/PhotoEditorActivity$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/PhotoEditorActivity;Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 41
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoEditorActivity;->finish()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    new-instance v3, Lcom/vk/attachpicker/screen/EditorScreen;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->thumb:Z

    invoke-direct {v3, v0, v4, v5}, Lcom/vk/attachpicker/screen/EditorScreen;-><init>(Ljava/io/File;Lcom/vk/attachpicker/screen/EditorScreen$Delegate;Z)V

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 63
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onDestroy()V

    .line 64
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 57
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onPause()V

    .line 58
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoEditorActivity;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onResume()V

    .line 52
    return-void
.end method

.method public setResultAndFinish(Landroid/content/Intent;)V
    .locals 1
    .param p1, "result"    # Landroid/content/Intent;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/PhotoEditorActivity;->setResult(I)V

    .line 83
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoEditorActivity;->finish()V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/vk/attachpicker/PhotoEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/vk/attachpicker/PhotoEditorActivity;->finish()V

    goto :goto_0
.end method
