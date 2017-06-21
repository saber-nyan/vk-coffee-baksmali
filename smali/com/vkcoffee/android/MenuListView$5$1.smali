.class Lcom/vkcoffee/android/MenuListView$5$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/MenuListView$5;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$5$1;->this$1:Lcom/vkcoffee/android/MenuListView$5;

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1099
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOnline()V

    .line 1100
    return-void
.end method
