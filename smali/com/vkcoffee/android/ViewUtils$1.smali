.class final Lcom/vkcoffee/android/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ViewUtils;->fixActionModeCallback(Landroid/support/v7/app/AppCompatActivity;Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mDelegate:Ljava/lang/Object;

.field final synthetic val$mWrapped:Landroid/support/v7/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Landroid/support/v7/view/ActionMode$Callback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vkcoffee/android/ViewUtils$1;->val$mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    iput-object p2, p0, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$1;->val$mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$1;->val$mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 27
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v20

    .line 137
    .local v20, "mDelegateClass":Ljava/lang/Class;
    const/16 v25, 0x0

    .line 138
    .local v25, "mWindow":Landroid/view/Window;
    const/4 v14, 0x0

    .line 139
    .local v14, "mActionModePopup":Landroid/widget/PopupWindow;
    const/16 v23, 0x0

    .line 140
    .local v23, "mShowActionModePopup":Ljava/lang/Runnable;
    const/16 v16, 0x0

    .line 141
    .local v16, "mActionModeView":Landroid/support/v7/widget/ActionBarContextView;
    const/16 v18, 0x0

    .line 142
    .local v18, "mAppCompatCallback":Landroid/support/v7/app/AppCompatCallback;
    const/16 v21, 0x0

    .line 143
    .local v21, "mFadeAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const/4 v12, 0x0

    .line 145
    .local v12, "mActionMode":Landroid/support/v7/view/ActionMode;
    const/16 v22, 0x0

    .line 146
    .local v22, "mFadeAnimField":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    .line 148
    .local v13, "mActionModeField":Ljava/lang/reflect/Field;
    :goto_0
    if-eqz v20, :cond_2

    .line 150
    :try_start_0
    const-string/jumbo v1, "AppCompatDelegateImplV7"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const-string/jumbo v1, "mActionModePopup"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 152
    .local v15, "mActionModePopupField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    invoke-virtual {v15, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/PopupWindow;

    move-object v14, v0

    .line 155
    const-string/jumbo v1, "mShowActionModePopup"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v24

    .line 156
    .local v24, "mShowActionModePopupField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Runnable;

    move-object/from16 v23, v0

    .line 159
    const-string/jumbo v1, "mActionModeView"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 160
    .local v17, "mActionModeViewField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    move-object/from16 v16, v0

    .line 163
    const-string/jumbo v1, "mFadeAnim"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    .line 164
    const/4 v1, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object/from16 v21, v0

    .line 167
    const-string/jumbo v1, "mActionMode"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    invoke-virtual {v13, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/v7/view/ActionMode;

    move-object v12, v0

    .line 181
    .end local v15    # "mActionModePopupField":Ljava/lang/reflect/Field;
    .end local v17    # "mActionModeViewField":Ljava/lang/reflect/Field;
    .end local v24    # "mShowActionModePopupField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v20

    goto/16 :goto_0

    .line 171
    :cond_1
    const-string/jumbo v1, "AppCompatDelegateImplBase"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string/jumbo v1, "mAppCompatCallback"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 173
    .local v19, "mAppCompatCallbackField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/v7/app/AppCompatCallback;

    move-object/from16 v18, v0

    .line 176
    const-string/jumbo v1, "mWindow"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v26

    .line 177
    .local v26, "mWindowField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/ViewUtils$1;->val$mDelegate:Ljava/lang/Object;

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/Window;

    move-object/from16 v25, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 182
    .end local v19    # "mAppCompatCallbackField":Ljava/lang/reflect/Field;
    .end local v26    # "mWindowField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v11

    .line 183
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 187
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v14, :cond_3

    .line 188
    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 191
    :cond_3
    if-eqz v16, :cond_5

    .line 192
    if-eqz v21, :cond_4

    .line 193
    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 196
    :cond_4
    invoke-static/range {v16 .. v16}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v21

    .line 198
    move-object v4, v14

    .line 199
    .local v4, "mActionModePopupFinal":Landroid/widget/PopupWindow;
    move-object/from16 v3, v16

    .line 200
    .local v3, "mActionModeViewFinal":Landroid/support/v7/widget/ActionBarContextView;
    move-object/from16 v5, v21

    .line 201
    .local v5, "mFadeAnimFinal":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    move-object/from16 v8, v18

    .line 202
    .local v8, "mAppCompatCallbackFinal":Landroid/support/v7/app/AppCompatCallback;
    move-object v9, v12

    .line 203
    .local v9, "mActionModeFinal":Landroid/support/v7/view/ActionMode;
    move-object/from16 v6, v22

    .line 204
    .local v6, "mFadeAnimFieldFinal":Ljava/lang/reflect/Field;
    move-object v10, v13

    .line 206
    .local v10, "mActionModeFieldFinal":Ljava/lang/reflect/Field;
    new-instance v1, Lcom/vkcoffee/android/ViewUtils$1$1;

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/vkcoffee/android/ViewUtils$1$1;-><init>(Lcom/vkcoffee/android/ViewUtils$1;Landroid/support/v7/widget/ActionBarContextView;Landroid/widget/PopupWindow;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/reflect/Field;Landroid/support/v7/view/ActionMode;Landroid/support/v7/app/AppCompatCallback;Landroid/support/v7/view/ActionMode;Ljava/lang/reflect/Field;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 242
    .end local v3    # "mActionModeViewFinal":Landroid/support/v7/widget/ActionBarContextView;
    .end local v4    # "mActionModePopupFinal":Landroid/widget/PopupWindow;
    .end local v5    # "mFadeAnimFinal":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v6    # "mFadeAnimFieldFinal":Ljava/lang/reflect/Field;
    .end local v8    # "mAppCompatCallbackFinal":Landroid/support/v7/app/AppCompatCallback;
    .end local v9    # "mActionModeFinal":Landroid/support/v7/view/ActionMode;
    .end local v10    # "mActionModeFieldFinal":Ljava/lang/reflect/Field;
    :cond_5
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$1;->val$mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
