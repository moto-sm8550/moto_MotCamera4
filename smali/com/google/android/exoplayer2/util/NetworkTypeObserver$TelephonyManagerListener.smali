.class public final Lcom/google/android/exoplayer2/util/NetworkTypeObserver$TelephonyManagerListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TelephonyManagerListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$TelephonyManagerListener;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 2
    :goto_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$TelephonyManagerListener;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    if-eqz p1, :cond_2

    const/16 p1, 0xa

    goto :goto_2

    :cond_2
    const/4 p1, 0x5

    :goto_2
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$400(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "nrState=CONNECTED"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "nrState=NOT_RESTRICTED"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 4
    :goto_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$TelephonyManagerListener;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    if-eqz p1, :cond_3

    const/16 p1, 0xa

    goto :goto_3

    :cond_3
    const/4 p1, 0x5

    :goto_3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$400(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    return-void
.end method
