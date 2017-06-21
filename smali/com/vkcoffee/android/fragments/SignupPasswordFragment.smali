.class public Lcom/vkcoffee/android/fragments/SignupPasswordFragment;
.super Lcom/vkcoffee/android/fragments/VKFragment;
.source "SignupPasswordFragment.java"


# instance fields
.field private doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

.field private explainText:Ljava/lang/String;

.field private initTime:J

.field private random:Ljava/security/SecureRandom;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKFragment;-><init>()V

    .line 30
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->random:Ljava/security/SecureRandom;

    .line 39
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v1, 0x7f1003b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onCreateView$182(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    invoke-interface {v0}, Lcom/vkcoffee/android/functions/VoidF0;->f()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onCreateView$183()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v2, 0x7f1003b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 91
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 92
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v2, 0x7f1003b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    const-string/jumbo v0, "init_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->initTime:J

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->initTime:J

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v12, 0x7f03016d

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    .line 57
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v13, 0x7f1003b2

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 58
    .local v9, "textView":Landroid/widget/TextView;
    const v12, 0x7f0804f5

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/math/BigInteger;

    const/16 v16, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->random:Ljava/security/SecureRandom;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v13, 0x7f10006b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 61
    .local v11, "topBlock":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .local v5, "pl":I
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .local v7, "pt":I
    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .local v6, "pr":I
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 62
    .local v4, "pb":I
    new-instance v13, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, -0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v12

    int-to-float v0, v12

    move/from16 v16, v0

    sget-boolean v12, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v12, :cond_2

    const/4 v12, 0x1

    :goto_0
    move/from16 v0, v16

    invoke-direct {v13, v14, v15, v0, v12}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {v11, v5, v7, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->explainText:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v13, 0x7f1003b1

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->explainText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v13, 0x7f1003b4

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 71
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v13, 0x7f1003b4

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupPasswordFragment;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v13, 0x7f1003b2

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 79
    .local v10, "textViewExample":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "examplePass":Ljava/lang/String;
    const-string/jumbo v12, ":"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v3, v12, 0x1

    .line 81
    .local v3, "index":I
    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v3, v12, :cond_1

    .line 82
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 84
    .local v8, "sp":Landroid/text/Spannable;
    new-instance v12, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;

    sget-object v13, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v13, v13, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-direct {v12, v13}, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;-><init>(Landroid/graphics/Typeface;)V

    const/4 v13, 0x0

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v8, v12, v13, v14, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 85
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0099

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v13, 0x0

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v8, v12, v13, v14, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 86
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 87
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .end local v1    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupPasswordFragment;)Ljava/lang/Runnable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    return-object v12

    .line 62
    .end local v2    # "examplePass":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v10    # "textViewExample":Landroid/widget/TextView;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->onDestroyView()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    .line 111
    return-void
.end method

.method public setExplainText(Ljava/lang/String;)V
    .locals 2
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->explainText:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v1, 0x7f1003b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V
    .locals 0
    .param p1, "doneFunc"    # Lcom/vkcoffee/android/functions/VoidF0;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    .line 52
    return-void
.end method
