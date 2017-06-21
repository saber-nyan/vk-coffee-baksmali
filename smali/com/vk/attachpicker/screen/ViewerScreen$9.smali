.class Lcom/vk/attachpicker/screen/ViewerScreen$9;
.super Ljava/lang/Object;
.source "ViewerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;->onPhotoClosed(Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/ViewerScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$9;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$9;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$2100(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    .line 818
    return-void
.end method
