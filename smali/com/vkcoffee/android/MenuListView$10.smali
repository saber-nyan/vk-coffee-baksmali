.class Lcom/vkcoffee/android/MenuListView$10;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Lcom/vkcoffee/android/MenuListView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunitySelected(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 1518
    if-nez p2, :cond_0

    .line 1519
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    .line 1521
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1522
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1523
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    const-class v2, Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1, v2, v0, p2}, Lcom/vkcoffee/android/MenuListView;->access$26(Lcom/vkcoffee/android/MenuListView;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    .line 1524
    return-void
.end method

.method public onMenuItemSelected(IZ)V
    .locals 6
    .param p1, "item"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 1461
    const/4 v1, 0x0

    .line 1462
    .local v1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1463
    .local v0, "args":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1465
    .local v2, "statKey":Ljava/lang/String;
    const v3, -0x77359400

    if-ne p1, v3, :cond_3

    .line 1466
    const-class v1, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    .line 1509
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1510
    const-string v3, "user_action"

    invoke-static {v3}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v3

    const-string v4, "action_type"

    const-string v5, "menu_click"

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v3

    const-string v4, "action_param"

    invoke-virtual {v3, v4, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 1512
    :cond_1
    if-eqz v1, :cond_2

    .line 1513
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v3, v1, v0, p2}, Lcom/vkcoffee/android/MenuListView;->access$26(Lcom/vkcoffee/android/MenuListView;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    .line 1515
    :cond_2
    return-void

    .line 1467
    :cond_3
    if-nez p1, :cond_4

    .line 1468
    const-class v1, Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1469
    const-string v3, "id"

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1470
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->OFFLINE()I

    move-result v3

    if-ne p1, v3, :cond_5

    .line 1471
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/MenuListView;->setLogicOffline()V

    goto :goto_0

    .line 1472
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNREAD()I

    move-result v3

    if-ne p1, v3, :cond_6

    .line 1473
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/MenuListView;->setLogicUnread()V

    goto :goto_0

    .line 1474
    :cond_6
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNTYPING()I

    move-result v3

    if-ne p1, v3, :cond_7

    .line 1475
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/MenuListView;->setLogicUntyping()V

    goto :goto_0

    .line 1476
    :cond_7
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->NEWS()I

    move-result v3

    if-ne p1, v3, :cond_8

    .line 1477
    const-class v1, Lcom/vkcoffee/android/fragments/NewsFragment;

    .line 1478
    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FEEDBACK()I

    move-result v3

    if-ne p1, v3, :cond_9

    .line 1479
    const-class v1, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;

    .line 1480
    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->DIALOGS()I

    move-result v3

    if-ne p1, v3, :cond_a

    .line 1481
    const-class v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1482
    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FRIENDS()I

    move-result v3

    if-ne p1, v3, :cond_b

    .line 1483
    const-class v1, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .line 1484
    goto :goto_0

    :cond_b
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GROUPS()I

    move-result v3

    if-ne p1, v3, :cond_c

    .line 1485
    const-class v1, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .line 1486
    goto :goto_0

    :cond_c
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PHOTOS()I

    move-result v3

    if-ne p1, v3, :cond_d

    .line 1487
    const-class v1, Lcom/vkcoffee/android/fragments/PhotosFragment;

    .line 1488
    const-string v3, "show_friends_feed"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1489
    :cond_d
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->VIDEOS()I

    move-result v3

    if-ne p1, v3, :cond_e

    .line 1490
    const-class v1, Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    .line 1491
    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->AUDIOS()I

    move-result v3

    if-ne p1, v3, :cond_f

    .line 1492
    const-class v1, Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 1493
    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GAMES()I

    move-result v3

    if-ne p1, v3, :cond_10

    .line 1494
    const-class v1, Lcom/vkcoffee/android/fragments/GamesFragment;

    .line 1495
    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FAVE()I

    move-result v3

    if-ne p1, v3, :cond_11

    .line 1496
    const-class v1, Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    .line 1497
    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SEARCH()I

    move-result v3

    if-ne p1, v3, :cond_12

    .line 1498
    const-class v1, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    .line 1499
    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SETTINGS()I

    move-result v3

    if-ne p1, v3, :cond_13

    .line 1500
    const-class v1, Lcom/vkcoffee/android/fragments/SettingsListFragment;

    .line 1501
    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->CLOSE()I

    move-result v3

    if-ne p1, v3, :cond_14

    .line 1502
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->closeApp()V

    goto/16 :goto_0

    .line 1503
    :cond_14
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PIN()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1504
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->pinLock(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method public onUserSelected(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 1452
    if-nez p2, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    .line 1455
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1456
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1457
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$10;->this$0:Lcom/vkcoffee/android/MenuListView;

    const-class v2, Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1, v2, v0, p2}, Lcom/vkcoffee/android/MenuListView;->access$26(Lcom/vkcoffee/android/MenuListView;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    .line 1458
    return-void
.end method
