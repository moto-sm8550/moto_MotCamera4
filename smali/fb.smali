.class public Lfb;
.super Lbw;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbp;
    .locals 0

    .line 1
    new-instance p0, Lfc;

    .line 2
    invoke-direct {p0}, Lfc;-><init>()V

    return-object p0
.end method
