.class public Lcom/vkcoffee/android/coffeeexternal/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# instance fields
.field private dragListAdapter:Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/coffeeexternal/TestActivity;->dragListAdapter:Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;

    .line 17
    return-void
.end method

.method private getMenu()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "MenuList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v2, 0x7f0301a4

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/coffeeexternal/TestActivity;->setContentView(I)V

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v1, "h":Ljava/util/HashMap;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/coffeeexternal/TestActivity;->list:Ljava/util/ArrayList;

    .line 46
    iget-object v2, p0, Lcom/vkcoffee/android/coffeeexternal/TestActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    const v2, 0x7f1001bf

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/coffeeexternal/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/coffeeexternal/DragListView;

    .line 52
    .local v0, "dragListView":Lcom/vkcoffee/android/coffeeexternal/DragListView;
    new-instance v2, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;

    iget-object v3, p0, Lcom/vkcoffee/android/coffeeexternal/TestActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/vkcoffee/android/coffeeexternal/TestActivity;->dragListAdapter:Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;

    .line 54
    iget-object v2, p0, Lcom/vkcoffee/android/coffeeexternal/TestActivity;->dragListAdapter:Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    return-void
.end method
