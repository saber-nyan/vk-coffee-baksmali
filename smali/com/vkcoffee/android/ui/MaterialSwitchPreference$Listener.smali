.class Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "MaterialSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MaterialSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/MaterialSwitchPreference;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;->this$0:Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/MaterialSwitchPreference;Lcom/vkcoffee/android/ui/MaterialSwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/MaterialSwitchPreference$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;-><init>(Lcom/vkcoffee/android/ui/MaterialSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;->this$0:Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 58
    :goto_1
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;->this$0:Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
