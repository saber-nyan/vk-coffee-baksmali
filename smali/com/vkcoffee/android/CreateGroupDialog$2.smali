.class Lcom/vkcoffee/android/CreateGroupDialog$2;
.super Landroid/widget/ArrayAdapter;
.source "CreateGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/CreateGroupDialog;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/CreateGroupDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/CreateGroupDialog;Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/CreateGroupDialog;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # [Ljava/lang/CharSequence;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/vkcoffee/android/CreateGroupDialog$2;->this$0:Lcom/vkcoffee/android/CreateGroupDialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
