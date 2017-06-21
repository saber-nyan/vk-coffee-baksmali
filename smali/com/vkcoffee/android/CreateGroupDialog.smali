.class public Lcom/vkcoffee/android/CreateGroupDialog;
.super Landroid/app/DialogFragment;
.source "CreateGroupDialog.java"


# instance fields
.field private mActivePublicType:I

.field private mGroupName:Landroid/widget/TextView;

.field private mGroupTypes:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

.field private mOkButton:Landroid/view/View;

.field private mPublicType:Landroid/widget/Spinner;

.field private mPublicTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mActivePublicType:I

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/CreateGroupDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/CreateGroupDialog;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->verifyUserInput()V

    return-void
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/CreateGroupDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/CreateGroupDialog;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mActivePublicType:I

    return p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/CreateGroupDialog;Lcom/vkcoffee/android/api/Group;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/CreateGroupDialog;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/CreateGroupDialog;->gotoNextStep(Lcom/vkcoffee/android/api/Group;)V

    return-void
.end method

.method private createGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subtype"    # I

    .prologue
    .line 140
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsCreate;

    invoke-direct {v0, p1, p2, p3}, Lcom/vkcoffee/android/api/groups/GroupsCreate;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vkcoffee/android/CreateGroupDialog$4;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/CreateGroupDialog$4;-><init>(Lcom/vkcoffee/android/CreateGroupDialog;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsCreate;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 148
    return-void
.end method

.method private createView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 87
    const v2, 0x7f0300ab

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10020a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupName:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupName:Landroid/widget/TextView;

    new-instance v3, Lcom/vkcoffee/android/CreateGroupDialog$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/CreateGroupDialog$1;-><init>(Lcom/vkcoffee/android/CreateGroupDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    const v2, 0x7f100250

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    iput-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupTypes:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    .line 106
    const v2, 0x7f100253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicType:Landroid/widget/Spinner;

    .line 107
    iget-object v3, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicType:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupTypes:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->getCheckedId()I

    move-result v2

    const v4, 0x7f100252

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupTypes:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-static {p0}, Lcom/vkcoffee/android/CreateGroupDialog$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/CreateGroupDialog;)Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setOnCheckedChangeListener(Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;)V

    .line 112
    iget-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupTypes:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    const v3, 0x7f100251

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    .line 114
    new-instance v0, Lcom/vkcoffee/android/CreateGroupDialog$2;

    invoke-virtual {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    iget-object v4, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicTypes:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/vkcoffee/android/CreateGroupDialog$2;-><init>(Lcom/vkcoffee/android/CreateGroupDialog;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 121
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 122
    iget-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicType:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 123
    iget-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicType:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicTypes:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 124
    iget-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicType:Landroid/widget/Spinner;

    new-instance v3, Lcom/vkcoffee/android/CreateGroupDialog$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/CreateGroupDialog$3;-><init>(Lcom/vkcoffee/android/CreateGroupDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 136
    return-object v1

    .line 107
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private gotoNextStep(Lcom/vkcoffee/android/api/Group;)V
    .locals 2
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 151
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method private verifyUserInput()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mOkButton:Landroid/view/View;

    iget-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupName:Landroid/widget/TextView;

    .line 157
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupTypes:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    .line 158
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->getCheckedId()I

    move-result v0

    const v2, 0x7f100252

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mActivePublicType:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mActivePublicType:I

    iget-object v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicTypes:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 156
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    :cond_1
    return-void

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$createView$259(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 109
    iget-object v1, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f100252

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->verifyUserInput()V

    .line 111
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method synthetic lambda$onStart$258(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupTypes:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->getCheckedId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mActivePublicType:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/vkcoffee/android/CreateGroupDialog;->createGroup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    :cond_0
    return-void

    .line 60
    :pswitch_1
    const-string/jumbo v0, "group"

    .line 62
    goto :goto_0

    .line 64
    :pswitch_2
    const-string/jumbo v0, "public"

    .line 66
    goto :goto_0

    .line 68
    :pswitch_3
    const-string/jumbo v0, "event"

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x7f100251
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mPublicTypes:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080047

    .line 44
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800b7

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/CreateGroupDialog;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 81
    iput-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupName:Landroid/widget/TextView;

    .line 82
    iput-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mGroupTypes:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    .line 83
    iput-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mOkButton:Landroid/view/View;

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 54
    invoke-virtual {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mOkButton:Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/vkcoffee/android/CreateGroupDialog;->verifyUserInput()V

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog;->mOkButton:Landroid/view/View;

    invoke-static {p0}, Lcom/vkcoffee/android/CreateGroupDialog$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/CreateGroupDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method
