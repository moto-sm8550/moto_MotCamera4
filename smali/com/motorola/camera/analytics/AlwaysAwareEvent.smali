.class public final Lcom/motorola/camera/analytics/AlwaysAwareEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "AlwaysAwareEvent.java"


# static fields
.field public static final ACTION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final GEO_AVAILABLE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final NETWORK_SUBTYPE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final NETWORK_TYPE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final NUM_FIELDS:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final OBJECT_TYPE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final SCAN_DURATION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final TIME_AT_DETECTION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "SCNTME"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->SCAN_DURATION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "TYPE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->OBJECT_TYPE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "ACTION"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->ACTION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "FLDS"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NUM_FIELDS:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "EVTTME"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->TIME_AT_DETECTION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "NETTYPE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_TYPE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "NETSUB"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_SUBTYPE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "GEO"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->GEO_AVAILABLE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final addData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p3, Lcom/motorola/camera/analytics/AlwaysAwareData;

    .line 2
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->SCAN_DURATION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 3
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->OBJECT_TYPE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 4
    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 6
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->ACTION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 7
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NUM_FIELDS:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    const-string p0, "false"

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->TIME_AT_DETECTION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 10
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_TYPE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 11
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_SUBTYPE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 12
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->GEO_AVAILABLE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    iget-boolean p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.6"

    return-object p0
.end method
