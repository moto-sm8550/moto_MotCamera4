.class public final Lcom/motorola/camera/analytics/PostDocEditEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "PostDocEditEvent.java"


# static fields
.field public static final ADJUSTED_EDGES:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final FILTER:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final ROTATED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "EDGES"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostDocEditEvent;->ADJUSTED_EDGES:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostDocEditEvent;->ROTATED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "FILTER"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostDocEditEvent;->FILTER:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final addData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 1

    const-string p0, "ANALYTICS_DOC_EDITOR_FILTER"

    .line 1
    invoke-virtual {p1, p0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p3, Lcom/motorola/camera/analytics/PostDocEditEvent;->ADJUSTED_EDGES:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v0, "ANALYTICS_DOC_EDITOR_EDGES"

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 5
    sget-object p3, Lcom/motorola/camera/analytics/PostDocEditEvent;->ROTATED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v0, "ANALYTICS_DOC_EDITOR_ROTATE"

    .line 6
    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 8
    sget-object p3, Lcom/motorola/camera/analytics/PostDocEditEvent;->FILTER:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 9
    invoke-virtual {p1, p0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final getEventType$enumunboxing$()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method
