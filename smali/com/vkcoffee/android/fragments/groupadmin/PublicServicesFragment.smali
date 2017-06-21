.class public Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "PublicServicesFragment.java"


# static fields
.field private static final IDS:[I


# instance fields
.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

.field private type:I

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->IDS:[I

    return-void

    :array_0
    .array-data 4
        0x7f100242
        0x7f100243
        0x7f100244
        0x7f100245
        0x7f100246
        0x7f100247
        0x7f100248
        0x7f100249
        0x7f10024a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wall"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "links"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photos"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "audio"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "topics"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "events"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "places"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contacts"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->fields:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->updateInfo()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->id:I

    return v0
.end method

.method private save()V
    .locals 5

    .prologue
    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v1, "params":Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 162
    new-instance v2, Lcom/vkcoffee/android/api/groups/GroupsEdit;

    iget v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->id:I

    invoke-direct {v2, v3, v1}, Lcom/vkcoffee/android/api/groups/GroupsEdit;-><init>(ILandroid/os/Bundle;)V

    new-instance v3, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$2;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/groups/GroupsEdit;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 170
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 171
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->fields:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->view:Landroid/view/View;

    sget-object v4, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateDecorator()V
    .locals 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 97
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->content:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 98
    .local v7, "vg":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 114
    iget v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->scrW:I

    const/16 v10, 0x39c

    if-lt v9, v10, :cond_2

    .line 115
    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    .line 119
    .local v5, "pad":I
    :goto_1
    invoke-virtual {v7, v5, v11, v5, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 120
    return-void

    .line 100
    .end local v5    # "pad":I
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 101
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    int-to-float v2, v9

    .line 102
    .local v2, "dp":F
    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->isTablet:Z

    if-eqz v9, :cond_1

    .line 103
    const/4 v8, 0x0

    .line 107
    .local v8, "z":Z
    :goto_2
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    const/4 v9, -0x1

    invoke-direct {v0, v6, v9, v2, v8}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 108
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 111
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 112
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "z":Z
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "z":Z
    goto :goto_2

    .line 117
    .end local v2    # "dp":F
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v8    # "z":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "pad":I
    goto :goto_1
.end method

.method private updateInfo()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 130
    const/4 v2, 0x1

    .line 131
    .local v2, "z":Z
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->view:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 133
    const/16 v4, 0x9

    new-array v1, v4, [Z

    .line 134
    .local v1, "values":[Z
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->wall:I

    if-ne v4, v5, :cond_3

    .line 135
    const/4 v3, 0x1

    .line 139
    .local v3, "z2":Z
    :goto_0
    aput-boolean v3, v1, v6

    .line 140
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->links:I

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_1
    aput-boolean v4, v1, v5

    .line 141
    const/4 v7, 0x2

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->photos:I

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_2
    aput-boolean v4, v1, v7

    .line 142
    const/4 v7, 0x3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->video:I

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_3
    aput-boolean v4, v1, v7

    .line 143
    const/4 v7, 0x4

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->audio:I

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_4
    aput-boolean v4, v1, v7

    .line 144
    const/4 v7, 0x5

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->topics:I

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_5
    aput-boolean v4, v1, v7

    .line 145
    const/4 v7, 0x6

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->events:I

    if-ne v4, v5, :cond_9

    move v4, v5

    :goto_6
    aput-boolean v4, v1, v7

    .line 146
    const/4 v4, 0x7

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v7, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->places:I

    if-ne v7, v5, :cond_0

    move v6, v5

    :cond_0
    aput-boolean v6, v1, v4

    .line 147
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->contacts:I

    if-eq v4, v5, :cond_1

    .line 148
    const/4 v2, 0x0

    .line 150
    :cond_1
    const/16 v4, 0x8

    aput-boolean v2, v1, v4

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_a

    .line 155
    .end local v0    # "i":I
    .end local v1    # "values":[Z
    .end local v3    # "z2":Z
    :cond_2
    return-void

    .line 137
    .restart local v1    # "values":[Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "z2":Z
    goto :goto_0

    :cond_4
    move v4, v6

    .line 140
    goto :goto_1

    :cond_5
    move v4, v6

    .line 141
    goto :goto_2

    :cond_6
    move v4, v6

    .line 142
    goto :goto_3

    :cond_7
    move v4, v6

    .line 143
    goto :goto_4

    :cond_8
    move v4, v6

    .line 144
    goto :goto_5

    :cond_9
    move v4, v6

    .line 145
    goto :goto_6

    .line 152
    .restart local v0    # "i":I
    :cond_a
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->view:Landroid/view/View;

    sget-object v5, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->IDS:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    aget-boolean v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public doLoadData()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;

    iget v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->id:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 83
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->id:I

    .line 42
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->type:I

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->loadData()V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->setHasOptionsMenu(Z)V

    .line 45
    const v0, 0x7f080255

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->setTitle(I)V

    .line 46
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->updateConfiguration()V

    .line 92
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->updateDecorator()V

    .line 93
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0300a9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->view:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 57
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->loaded:Z

    if-eqz v1, :cond_0

    .line 58
    const v1, 0x7f080451

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 59
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 60
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 62
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->content:Landroid/view/View;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->updateConfiguration()V

    .line 52
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->updateDecorator()V

    .line 53
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->save()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 87
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_split"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_0
    return-void
.end method
