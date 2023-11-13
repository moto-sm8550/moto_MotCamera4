.class public final Lcom/google/android/play/core/appupdate/AppUpdateInfo;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zzi:J

.field public final zzj:J

.field public final zzk:Landroid/app/PendingIntent;

.field public final zzl:Landroid/app/PendingIntent;

.field public final zzm:Landroid/app/PendingIntent;

.field public final zzn:Landroid/app/PendingIntent;

.field public zzo:Z


# direct methods
.method public constructor <init>(IIIJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzo:Z

    iput p1, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzb:I

    iput p2, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    iput p3, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzd:I

    iput-wide p4, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzi:J

    iput-wide p6, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzj:J

    iput-object p8, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzk:Landroid/app/PendingIntent;

    iput-object p9, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzl:Landroid/app/PendingIntent;

    iput-object p10, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzm:Landroid/app/PendingIntent;

    iput-object p11, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzn:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Landroid/app/PendingIntent;
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/play/core/appupdate/zzx;

    .line 2
    iget v0, p1, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzl:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-boolean p1, p1, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    if-eqz p1, :cond_1

    .line 5
    iget-wide v4, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzi:J

    iget-wide v6, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzj:J

    cmp-long p1, v4, v6

    if-gtz p1, :cond_1

    move v1, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzn:Landroid/app/PendingIntent;

    return-object p0

    :cond_2
    return-object v2

    :cond_3
    if-ne v0, v3, :cond_6

    .line 7
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzk:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    iget-boolean p1, p1, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    if-eqz p1, :cond_5

    .line 9
    iget-wide v4, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzi:J

    iget-wide v6, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzj:J

    cmp-long p1, v4, v6

    if-gtz p1, :cond_5

    move v1, v3

    :cond_5
    if-eqz v1, :cond_6

    .line 10
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzm:Landroid/app/PendingIntent;

    return-object p0

    :cond_6
    return-object v2
.end method
