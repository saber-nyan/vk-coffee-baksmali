.class public Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;
.super Lme/grishka/appkit/fragments/ToolbarFragment;
.source "BannedUserSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;
    }
.end annotation


# static fields
.field private static final BLOCK_DURATIONS:[I


# instance fields
.field private commentEdit:Landroid/widget/EditText;

.field private durationAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;",
            ">;"
        }
    .end annotation
.end field

.field private durationSpinner:Landroid/widget/Spinner;

.field private profile:Lcom/vkcoffee/android/UserProfile;

.field private reasonAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private reasonSpinner:Landroid/widget/Spinner;

.field private showCommentCheck:Landroid/widget/CheckBox;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x1

    const v2, 0x1e13380

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x28de80

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x93a80

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x15180

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xe10

    aput v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->BLOCK_DURATIONS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->unban()V

    return-void
.end method

.method public static open(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 4
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 219
    new-instance v0, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v1, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    new-instance v2, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/content/Context;)V

    .line 220
    return-void
.end method

.method private save()V
    .locals 15

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->durationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;

    iget v4, v0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;->time:I

    .line 224
    .local v4, "endDate":I
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->reasonSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 225
    .local v5, "reason":I
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "comment":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->showCommentCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 227
    .local v7, "showComment":Z
    move v11, v4

    .line 228
    .local v11, "i":I
    move-object v12, v6

    .line 229
    .local v12, "str":Ljava/lang/String;
    move v13, v5

    .line 230
    .local v13, "i2":I
    move v14, v7

    .line 231
    .local v14, "z":Z
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsBanUser;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;-><init>(IIZIILjava/lang/String;Z)V

    new-instance v8, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    move-object v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;Landroid/content/Context;ILjava/lang/String;IZ)V

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 261
    return-void
.end method

.method private unban()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 264
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsBanUser;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;-><init>(IIZIILjava/lang/String;Z)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$5;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$5;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 273
    return-void
.end method

.method private updateDecorator()V
    .locals 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 178
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 179
    .local v7, "vg":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 195
    iget v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->scrW:I

    const/16 v10, 0x39c

    if-lt v9, v10, :cond_2

    .line 196
    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    .line 200
    .local v5, "pad":I
    :goto_1
    invoke-virtual {v7, v5, v11, v5, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 201
    return-void

    .line 181
    .end local v5    # "pad":I
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 182
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    int-to-float v2, v9

    .line 183
    .local v2, "dp":F
    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->isTablet:Z

    if-eqz v9, :cond_1

    .line 184
    const/4 v8, 0x0

    .line 188
    .local v8, "z":Z
    :goto_2
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    const/4 v9, -0x1

    invoke-direct {v0, v6, v9, v2, v8}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 189
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 193
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "z":Z
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "z":Z
    goto :goto_2

    .line 198
    .end local v2    # "dp":F
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v8    # "z":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "pad":I
    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 68
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-class v1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->setHasOptionsMenu(Z)V

    .line 71
    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->setTitle(I)V

    .line 72
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->updateConfiguration()V

    .line 173
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->updateDecorator()V

    .line 174
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const v7, 0x7f0300aa

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    .line 87
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    const v8, 0x7f10024b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->durationSpinner:Landroid/widget/Spinner;

    .line 88
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    const v8, 0x7f10024c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->reasonSpinner:Landroid/widget/Spinner;

    .line 89
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    const v8, 0x7f10024d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->commentEdit:Landroid/widget/EditText;

    .line 90
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    const v8, 0x7f10024e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->showCommentCheck:Landroid/widget/CheckBox;

    .line 91
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0d000d

    const v9, 0x7f030058

    invoke-static {v7, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->reasonAdapter:Landroid/widget/ArrayAdapter;

    .line 92
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->reasonAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->reasonSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->reasonAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v8, "ban_admin"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 95
    .local v0, "admin":Lcom/vkcoffee/android/UserProfile;
    new-instance v7, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$1;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f030058

    invoke-direct {v7, p0, v8, v9}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->durationAdapter:Landroid/widget/ArrayAdapter;

    .line 110
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "durations":[Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v8, "ban_end_date"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 112
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v8, "ban_end_date"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 113
    .local v2, "endDate":I
    if-lez v2, :cond_0

    .line 114
    new-instance v5, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;)V

    .line 115
    .local v5, "opt":Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;
    const v7, 0x7f080213

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;->title:Ljava/lang/String;

    .line 116
    iput v2, v5, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;->time:I

    .line 117
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->durationAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 120
    .end local v2    # "endDate":I
    .end local v5    # "opt":Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-lt v3, v7, :cond_1

    .line 131
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->durationSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->durationAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 132
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    const v8, 0x7f10020a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v8, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    if-eqz v0, :cond_5

    .line 134
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    const v8, 0x7f10012e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v8, v8, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v8, :cond_3

    const v8, 0x7f080209

    :goto_1
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v8, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v8, :cond_4

    const v8, 0x7f080065

    :goto_2
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v8, v10}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v9, v9, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v10, "ban_date"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->reasonSpinner:Landroid/widget/Spinner;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->reasonAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v10, v10, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v11, "ban_reason"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 136
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->commentEdit:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v8, v8, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v9, "ban_comment"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->showCommentCheck:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v8, v8, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v9, "ban_comment_visible"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 144
    :goto_3
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 158
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    const v8, 0x7f10024f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$3;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    return-object v7

    .line 121
    :cond_1
    new-instance v5, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;)V

    .line 122
    .restart local v5    # "opt":Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;
    aget-object v7, v1, v3

    iput-object v7, v5, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;->title:Ljava/lang/String;

    .line 123
    if-nez v3, :cond_2

    .line 124
    const v7, 0x7f080214

    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;->subtitle:Ljava/lang/String;

    .line 129
    :goto_4
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->durationAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 126
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v7

    sget-object v8, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->BLOCK_DURATIONS:[I

    aget v8, v8, v3

    add-int/2addr v7, v8

    iput v7, v5, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;->time:I

    .line 127
    const v7, 0x7f080213

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v5, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;->time:I

    invoke-static {v10}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;->subtitle:Ljava/lang/String;

    goto :goto_4

    .line 134
    .end local v5    # "opt":Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;
    :cond_3
    const v8, 0x7f08020a

    goto/16 :goto_1

    :cond_4
    const v8, 0x7f080066

    goto/16 :goto_2

    .line 139
    :cond_5
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    const v8, 0x7f10012e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 140
    .local v6, "textView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v8, "is_group_member"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "is_group_member"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    const v4, 0x7f08020f

    .line 141
    .local v4, "i2":I
    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->view:Landroid/view/View;

    const v8, 0x7f10024f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 140
    .end local v4    # "i2":I
    :cond_7
    const v4, 0x7f080210

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 75
    const v1, 0x7f080451

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 76
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 77
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/ToolbarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->content:Landroid/view/View;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 213
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->updateConfiguration()V

    .line 214
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->updateDecorator()V

    .line 215
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->save()V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 168
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_split"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_0
    return-void
.end method
