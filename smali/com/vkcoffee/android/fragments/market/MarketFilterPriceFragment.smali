.class public Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;
.super Lme/grishka/appkit/fragments/ToolbarFragment;
.source "MarketFilterPriceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;
    }
.end annotation


# instance fields
.field private editPriceFinish:Landroid/widget/EditText;

.field private editPriceStart:Landroid/widget/EditText;

.field private editorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private validator:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ToolbarFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$1;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 69
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->validator:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceFinish:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->done()V

    return-void
.end method

.method private done()V
    .locals 11

    .prologue
    .line 174
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v10, "min"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 176
    .local v8, "min":J
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v10, "max"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 177
    .local v6, "max":J
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v10, "current_min"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 178
    .local v2, "currentMin":J
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v10, "current_max"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 180
    .local v0, "currentMax":J
    :try_start_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceStart:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 185
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceFinish:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 189
    :goto_1
    cmp-long v5, v2, v8

    if-ltz v5, :cond_0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    :cond_0
    move-wide v2, v8

    .line 190
    :cond_1
    cmp-long v5, v0, v8

    if-lez v5, :cond_2

    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    :cond_2
    move-wide v0, v6

    .line 192
    :cond_3
    cmp-long v5, v2, v0

    if-lez v5, :cond_4

    .line 193
    add-long/2addr v2, v0

    .line 194
    sub-long v0, v2, v0

    .line 195
    sub-long/2addr v2, v0

    .line 198
    :cond_4
    const-string/jumbo v5, "min"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    const-string/jumbo v5, "max"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v10, -0x1

    invoke-virtual {v5, v10, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 202
    return-void

    .line 186
    :catch_0
    move-exception v5

    goto :goto_1

    .line 181
    :catch_1
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$403(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 153
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 103
    const v0, 0x7f0803b7

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->setTitle(I)V

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->setHasOptionsMenu(Z)V

    .line 106
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const v11, 0x7f0300c9

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 111
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f10027b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 112
    .local v9, "topBlock":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .local v6, "pl":I
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .local v8, "pt":I
    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .local v7, "pr":I
    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 113
    .local v5, "pb":I
    new-instance v12, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, -0x1

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v11

    int-to-float v15, v11

    sget-boolean v11, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v11, :cond_2

    const/4 v11, 0x1

    :goto_0
    invoke-direct {v12, v13, v14, v15, v11}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {v9, v6, v8, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 116
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->scrW:I

    const/16 v12, 0x39c

    if-lt v11, v12, :cond_3

    const/4 v2, 0x1

    .line 117
    .local v2, "isTabletDecorator":Z
    :goto_1
    if-eqz v2, :cond_4

    const/16 v11, 0x10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->scrW:I

    add-int/lit16 v12, v12, -0x39c

    div-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    .line 119
    .local v3, "pad":I
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 120
    .local v4, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v3, v11, v3, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 123
    const v11, 0x7f10027c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceStart:Landroid/widget/EditText;

    .line 124
    const v11, 0x7f10027d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceFinish:Landroid/widget/EditText;

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "current_min"

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceStart:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "current_min"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "current_max"

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_1

    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceFinish:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "current_max"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceStart:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "min"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceFinish:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "max"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceStart:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->validator:Landroid/text/TextWatcher;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceFinish:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->validator:Landroid/text/TextWatcher;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceStart:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceFinish:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 142
    const v11, 0x7f10027e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "currency"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-object v10

    .line 113
    .end local v2    # "isTabletDecorator":Z
    .end local v3    # "pad":I
    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 116
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 117
    .restart local v2    # "isTabletDecorator":Z
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ToolbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 159
    const v0, 0x7f11000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lme/grishka/appkit/fragments/ToolbarFragment;->onDestroyView()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceFinish:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->editPriceStart:Landroid/widget/EditText;

    .line 208
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->done()V

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x7f10044f
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020234

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 150
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method
