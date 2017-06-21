.class public Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "ServicesFragment.java"


# static fields
.field private static final descriptions:[I

.field private static final ids:[I

.field private static final options:[I

.field private static final titles:[I


# instance fields
.field private id:I

.field private info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

.field private radioGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/CompoundRadioGroup;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->descriptions:[I

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->ids:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->options:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->titles:[I

    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x7f0d0014
        0x7f0d0010
        0x7f0d0012
        0x7f0d000b
        0x7f0d000f
        0x7f0d000e
        0x7f0d0015
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x7f10002e
        0x7f10002f
        0x7f100030
        0x7f100031
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x7f0d0013
        0x7f0d0011
        0x7f0d0011
        0x7f0d0011
        0x7f0d0011
        0x7f0d0011
        0x7f0d0011
    .end array-data

    .line 36
    :array_3
    .array-data 4
        0x7f0805a6
        0x7f08034f
        0x7f08059b
        0x7f080094
        0x7f080133
        0x7f0800b3
        0x7f0805b9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->radioGroups:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->updateInfo()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->id:I

    return v0
.end method

.method private save()V
    .locals 7

    .prologue
    .line 159
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v2, "params":Landroid/os/Bundle;
    const/4 v4, 0x7

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "wall"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "photos"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "video"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "audio"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "docs"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "topics"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "wiki"

    aput-object v5, v1, v4

    .line 161
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-lt v0, v4, :cond_0

    .line 181
    new-instance v4, Lcom/vkcoffee/android/api/groups/GroupsEdit;

    iget v5, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->id:I

    invoke-direct {v4, v5, v2}, Lcom/vkcoffee/android/api/groups/GroupsEdit;-><init>(ILandroid/os/Bundle;)V

    new-instance v5, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$2;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/groups/GroupsEdit;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 189
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 190
    return-void

    .line 162
    :cond_0
    const/4 v3, 0x0

    .line 163
    .local v3, "value":I
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->radioGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->getCheckedId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 179
    :goto_1
    aget-object v4, v1, v0

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :pswitch_0
    const/4 v3, 0x0

    .line 166
    goto :goto_1

    .line 168
    :pswitch_1
    const/4 v3, 0x1

    .line 169
    goto :goto_1

    .line 171
    :pswitch_2
    const/4 v3, 0x2

    .line 172
    goto :goto_1

    .line 174
    :pswitch_3
    const/4 v3, 0x3

    .line 175
    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7f10002e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateDecorator()V
    .locals 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 119
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->content:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 120
    .local v7, "vg":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 136
    iget v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->scrW:I

    const/16 v10, 0x39c

    if-lt v9, v10, :cond_2

    .line 137
    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    .line 141
    .local v5, "pad":I
    :goto_1
    invoke-virtual {v7, v5, v11, v5, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 142
    return-void

    .line 122
    .end local v5    # "pad":I
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 123
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    int-to-float v2, v9

    .line 124
    .local v2, "dp":F
    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->isTablet:Z

    if-eqz v9, :cond_1

    .line 125
    const/4 v8, 0x0

    .line 129
    .local v8, "z":Z
    :goto_2
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    const/4 v9, -0x1

    invoke-direct {v0, v6, v9, v2, v8}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 130
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 133
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 134
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "z":Z
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "z":Z
    goto :goto_2

    .line 139
    .end local v2    # "dp":F
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v8    # "z":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "pad":I
    goto :goto_1
.end method

.method private updateInfo()V
    .locals 5

    .prologue
    .line 152
    const/4 v2, 0x7

    new-array v1, v2, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v3, v3, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->wall:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v3, v3, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->photos:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v3, v3, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->video:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v3, v3, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->audio:I

    aput v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v3, v3, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->docs:I

    aput v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v3, v3, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->topics:I

    aput v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v3, v3, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->wiki:I

    aput v3, v1, v2

    .line 153
    .local v1, "values":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 156
    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->radioGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    sget-object v3, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->ids:[I

    aget v4, v1, v0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doLoadData()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;

    iget v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->id:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 92
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->id:I

    .line 45
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->type:I

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->loadData()V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->setHasOptionsMenu(Z)V

    .line 48
    const v0, 0x7f080255

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->setTitle(I)V

    .line 49
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->updateConfiguration()V

    .line 114
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->updateDecorator()V

    .line 115
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0300a8

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "content":Landroid/view/View;
    const v9, 0x7f10000d

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 61
    .local v1, "cv":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v9, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->options:[I

    array-length v9, v9

    if-lt v2, v9, :cond_0

    .line 80
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f030088

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 63
    .local v8, "wrap":Landroid/view/View;
    const v9, 0x7f1001f4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 64
    .local v5, "radioGroup":Landroid/view/ViewGroup;
    const v9, 0x7f1001f3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    sget-object v10, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->titles:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 65
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->options:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "titles":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->descriptions:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "subtitles":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v9, v7

    if-lt v4, v9, :cond_1

    .line 77
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->radioGroups:Ljava/util/ArrayList;

    check-cast v5, Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    .end local v5    # "radioGroup":Landroid/view/ViewGroup;
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .restart local v5    # "radioGroup":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f03015e

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "item":Landroid/view/View;
    const v9, 0x7f1000dd

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aget-object v10, v7, v4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v9, 0x7f10012e

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aget-object v10, v6, v4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    aget-object v9, v6, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 72
    const v9, 0x7f10012e

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_2
    sget-object v9, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->ids:[I

    aget v9, v9, v4

    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    .line 75
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 95
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->loaded:Z

    if-eqz v1, :cond_0

    .line 96
    const v1, 0x7f080451

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->updateConfiguration()V

    .line 54
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->updateDecorator()V

    .line 55
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->save()V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 109
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_split"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :cond_0
    return-void
.end method
