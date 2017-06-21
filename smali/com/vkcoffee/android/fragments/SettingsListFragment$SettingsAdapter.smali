.class Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;
.super Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;
.source "SettingsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsAdapter"
.end annotation


# static fields
.field private static final TYPE_BOTTOM:I = 0x3

.field private static final TYPE_HEADER:I = 0x5

.field private static final TYPE_ICON_PREF:I = 0x2

.field private static final TYPE_LOGOUT:I = 0x4

.field private static final TYPE_TITLE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;)V
    .locals 0
    .param p2, "dataDelegate"    # Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    .line 106
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;-><init>(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;)V

    .line 107
    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;)Lcom/vkcoffee/android/fragments/SettingsListFragment;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    return-object v0
.end method


# virtual methods
.method createData()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation

    .prologue
    const v2, 0x7f0200a5

    const v8, 0x7f02004e

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->access$3(Lcom/vkcoffee/android/fragments/SettingsListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v1, "\u0412\u0430\u0436\u043d\u043e\u0435"

    invoke-static {v7, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020300

    const-string v3, "\u041e \u043f\u0440\u043e\u0435\u043a\u0442\u0435 VK Coffee"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 VK Coffee"

    invoke-static {v7, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020306

    const-string v3, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f c \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020304

    const-string v3, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u044c"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020309

    const-string v3, "\u0411\u043e\u0442"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020307

    const-string v3, "\u0418\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020302

    const-string v3, "\u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMessagesFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f02030e

    const-string v3, "\u0411\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442\u044c"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020303

    const-string v3, "\u0410\u0443\u0434\u0438\u043e"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020305

    const-string v3, "\u0424\u043e\u0442\u043e, \u0432\u0438\u0434\u0435\u043e \u0438 \u0441\u0441\u044b\u043b\u043a\u0438"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeContentFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020301

    const-string v3, "\u041e\u0442\u043b\u0430\u0434\u043a\u0430"

    const-class v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    const v1, 0x7f0802a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020209

    const v3, 0x7f0804b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020207

    const v3, 0x7f08049e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020205

    const v3, 0x7f08047f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f02020a

    const v3, 0x7f0803c9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020206

    const v3, 0x7f0800ab

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const v1, 0x7f080265

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020208

    const v3, 0x7f080265

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$SettingsAdapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    const v2, 0x7f020204

    const v3, 0x7f0802a6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$SettingsAdapter$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v1, 0x4

    const v2, 0x7f080297

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->topBottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-object v0

    .line 116
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method lambda$createData$604()V
    .locals 5

    .prologue
    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "url"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "support_url"

    const-string v4, "about:blank"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "open_internally"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    const-class v1, Lcom/vkcoffee/android/fragments/WebViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method lambda$createData$605()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/MainActivity;->showAbout(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 163
    packed-switch p2, :pswitch_data_0

    .line 180
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-direct {v0, p1, v1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;-><init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/functions/VoidF1;)V

    :goto_0
    return-object v0

    .line 165
    :pswitch_1
    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->blueTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_2
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 169
    :pswitch_3
    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 175
    :pswitch_4
    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter$2;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->access$5(Lcom/vkcoffee/android/fragments/SettingsListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter$2;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
