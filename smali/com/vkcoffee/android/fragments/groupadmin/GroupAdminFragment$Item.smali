.class public Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;
.super Ljava/lang/Object;
.source "GroupAdminFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Item"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field icon:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;
    .param p2, "_icon"    # I
    .param p3, "_title"    # Ljava/lang/String;
    .param p4, "_action"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p2, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;->icon:I

    .line 214
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;->title:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;->action:Ljava/lang/String;

    .line 216
    return-void
.end method
