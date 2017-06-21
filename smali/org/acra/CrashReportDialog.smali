.class public Lorg/acra/CrashReportDialog;
.super Lorg/acra/BaseCrashReportDialog;
.source "CrashReportDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final STATE_COMMENT:Ljava/lang/String; = "comment"

.field private static final STATE_EMAIL:Ljava/lang/String; = "email"


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field private userCommentView:Landroid/widget/EditText;

.field private userEmailView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/acra/BaseCrashReportDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildCustomView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v5, "root":Landroid/widget/LinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    const/16 v10, 0xa

    const/16 v11, 0xa

    const/16 v12, 0xa

    const/16 v13, 0xa

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 59
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 61
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v7, "scroll":Landroid/widget/ScrollView;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    .local v8, "scrollable":Landroid/widget/LinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 67
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v9, "text":Landroid/widget/TextView;
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/acra/ACRAConfiguration;->resDialogText()I

    move-result v1

    .line 69
    .local v1, "dialogTextId":I
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/acra/ACRAConfiguration;->resDialogCommentPrompt()I

    move-result v0

    .line 76
    .local v0, "commentPromptId":I
    if-eqz v0, :cond_2

    .line 77
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v3, "label":Landroid/widget/TextView;
    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v10

    const/16 v11, 0xa

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v12

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 81
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/acra/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    .line 84
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setLines(I)V

    .line 85
    if-eqz p1, :cond_1

    .line 86
    const-string/jumbo v10, "comment"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "savedValue":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 88
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    invoke-virtual {v10, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v6    # "savedValue":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/acra/ACRAConfiguration;->resDialogEmailPrompt()I

    move-result v2

    .line 96
    .local v2, "emailPromptId":I
    if-eqz v2, :cond_4

    .line 97
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    .restart local v3    # "label":Landroid/widget/TextView;
    invoke-virtual {p0, v2}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v10

    const/16 v11, 0xa

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v12

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    .line 104
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->setSingleLine()V

    .line 105
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    const/16 v11, 0x21

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 107
    const/4 v6, 0x0

    .line 108
    .restart local v6    # "savedValue":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 109
    const-string/jumbo v10, "email"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    :cond_3
    if-eqz v6, :cond_5

    .line 112
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v10, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v6    # "savedValue":Ljava/lang/String;
    :cond_4
    return-object v5

    .line 114
    .restart local v3    # "label":Landroid/widget/TextView;
    .restart local v6    # "savedValue":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 115
    .local v4, "prefs":Landroid/content/SharedPreferences;
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    const-string/jumbo v11, "acra.user.email"

    const-string/jumbo v12, ""

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 127
    iget-object v4, p0, Lorg/acra/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/acra/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "comment":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 132
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "userEmail":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 135
    .local v1, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "acra.user.email"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    .end local v1    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    invoke-virtual {p0, v0, v3}, Lorg/acra/CrashReportDialog;->sendCrash(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v0    # "comment":Ljava/lang/String;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "userEmail":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 146
    return-void

    .line 127
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 138
    .restart local v0    # "comment":Ljava/lang/String;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const-string/jumbo v4, "acra.user.email"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "userEmail":Ljava/lang/String;
    goto :goto_1

    .line 142
    .end local v0    # "comment":Ljava/lang/String;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "userEmail":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->cancelReports()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lorg/acra/BaseCrashReportDialog;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->resDialogTitle()I

    move-result v2

    .line 36
    .local v2, "titleResourceId":I
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 39
    :cond_0
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->resDialogIcon()I

    move-result v1

    .line 40
    .local v1, "iconResourceId":I
    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Lorg/acra/CrashReportDialog;->buildCustomView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->resDialogPositiveButtonText()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->resDialogNegativeButtonText()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lorg/acra/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    .line 48
    iget-object v3, p0, Lorg/acra/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    iget-object v3, p0, Lorg/acra/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    iget-object v3, p0, Lorg/acra/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 51
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 152
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lorg/acra/BaseCrashReportDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "comment"

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    const-string/jumbo v0, "email"

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    return-void
.end method
