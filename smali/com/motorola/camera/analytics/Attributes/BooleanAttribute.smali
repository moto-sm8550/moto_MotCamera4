.class public final Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;
.super Ljava/lang/Object;
.source "BooleanAttribute.java"


# instance fields
.field public final mMandatory:Z

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mMandatory:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mMandatory:Z

    return-void
.end method


# virtual methods
.method public final record(Landroid/os/Bundle;Ljava/lang/Boolean;)V
    .locals 1

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mMandatory:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public final bridge synthetic record(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    return-void
.end method
