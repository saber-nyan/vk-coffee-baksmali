.class public Lcom/google/android/gms/internal/zzfm;
.super Lcom/google/android/gms/internal/zzfs;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzCU:Ljava/lang/String;

.field private zzCV:J

.field private zzCW:J

.field private zzCX:Ljava/lang/String;

.field private zzCY:Ljava/lang/String;

.field private final zzxA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzjp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "createCalendarEvent"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzfs;-><init>(Lcom/google/android/gms/internal/zzjp;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfm;->zzxA:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzjp;->zzhP()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfm;->zzeK()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zzaj(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzxA:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzxA:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private zzak(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzxA:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method

.method private zzeK()V
    .locals 2

    const-string/jumbo v0, "description"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfm;->zzaj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzCU:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfm;->zzaj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzCX:Ljava/lang/String;

    const-string/jumbo v0, "start_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfm;->zzak(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfm;->zzCV:J

    const-string/jumbo v0, "end_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfm;->zzak(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfm;->zzCW:J

    const-string/jumbo v0, "location"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfm;->zzaj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzCY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createIntent()Landroid/content/Intent;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const-wide/16 v4, -0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfm;->zzCU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "eventLocation"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfm;->zzCY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfm;->zzCX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfm;->zzCV:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-string/jumbo v1, "beginTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfm;->zzCV:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfm;->zzCW:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfm;->zzCW:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public execute()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Activity context is not available."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfm;->zzam(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfm;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzir;->zzM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbl;->zzdo()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "This feature is not available on the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfm;->zzam(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfm;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzir;->zzL(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->create_calendar_title:I

    const-string/jumbo v3, "Create calendar event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzih;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->create_calendar_message:I

    const-string/jumbo v3, "Allow Ad to create a calendar event?"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzih;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->accept:I

    const-string/jumbo v3, "Accept"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzih;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzfm$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzfm$1;-><init>(Lcom/google/android/gms/internal/zzfm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->decline:I

    const-string/jumbo v3, "Decline"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzih;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzfm$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzfm$2;-><init>(Lcom/google/android/gms/internal/zzfm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
