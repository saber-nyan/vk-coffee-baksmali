.class Lcom/vkcoffee/android/ViewUtils$1$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ViewUtils$1;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ViewUtils$1;

.field final synthetic val$mActionModeFieldFinal:Ljava/lang/reflect/Field;

.field final synthetic val$mActionModeFinal:Landroid/support/v7/view/ActionMode;

.field final synthetic val$mActionModePopupFinal:Landroid/widget/PopupWindow;

.field final synthetic val$mActionModeViewFinal:Landroid/support/v7/widget/ActionBarContextView;

.field final synthetic val$mAppCompatCallbackFinal:Landroid/support/v7/app/AppCompatCallback;

.field final synthetic val$mFadeAnimFieldFinal:Ljava/lang/reflect/Field;

.field final synthetic val$mFadeAnimFinal:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$mode:Landroid/support/v7/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ViewUtils$1;Landroid/support/v7/widget/ActionBarContextView;Landroid/widget/PopupWindow;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/reflect/Field;Landroid/support/v7/view/ActionMode;Landroid/support/v7/app/AppCompatCallback;Landroid/support/v7/view/ActionMode;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ViewUtils$1;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->this$0:Lcom/vkcoffee/android/ViewUtils$1;

    iput-object p2, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeViewFinal:Landroid/support/v7/widget/ActionBarContextView;

    iput-object p3, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModePopupFinal:Landroid/widget/PopupWindow;

    iput-object p4, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mFadeAnimFinal:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p5, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mFadeAnimFieldFinal:Ljava/lang/reflect/Field;

    iput-object p6, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mode:Landroid/support/v7/view/ActionMode;

    iput-object p7, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mAppCompatCallbackFinal:Landroid/support/v7/app/AppCompatCallback;

    iput-object p8, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeFinal:Landroid/support/v7/view/ActionMode;

    iput-object p9, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeFieldFinal:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeViewFinal:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModePopupFinal:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModePopupFinal:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 215
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeViewFinal:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 216
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mFadeAnimFinal:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mFadeAnimFieldFinal:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mFadeAnimFieldFinal:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->this$0:Lcom/vkcoffee/android/ViewUtils$1;

    iget-object v2, v2, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->this$0:Lcom/vkcoffee/android/ViewUtils$1;

    iget-object v1, v1, Lcom/vkcoffee/android/ViewUtils$1;->val$mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v2, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 228
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mAppCompatCallbackFinal:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mAppCompatCallbackFinal:Landroid/support/v7/app/AppCompatCallback;

    iget-object v2, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeFinal:Landroid/support/v7/view/ActionMode;

    invoke-interface {v1, v2}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 233
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeFieldFinal:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeFieldFinal:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->this$0:Lcom/vkcoffee/android/ViewUtils$1;

    iget-object v2, v2, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    :cond_3
    :goto_2
    return-void

    .line 211
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeViewFinal:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$1$1;->val$mActionModeViewFinal:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 236
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 237
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method
