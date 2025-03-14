.class public final Lk1/e;
.super Lk1/g;
.source "SourceFile"


# static fields
.field public static final a:Lk1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk1/e;

    invoke-direct {v0}, Lk1/e;-><init>()V

    sput-object v0, Lk1/e;->a:Lk1/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk1/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
