.class Lcom/vkcoffee/android/ProfileStatic$3$2$1;
.super Ljava/lang/Object;
.source "ProfileStatic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ProfileStatic$3$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/ProfileStatic$3$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ProfileStatic$3$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ProfileStatic$3$2$1;->this$2:Lcom/vkcoffee/android/ProfileStatic$3$2;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 156
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOnline()V

    .line 157
    return-void
.end method
